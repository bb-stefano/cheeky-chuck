/*** code by Joco Giant | jocogiant.com ***/

var apiPrefix = 'http://api.cheekychuck.com/api/1.0/';
var renrenPrefix = apiPrefix + 'renren/login.php?cid=';
var twitterPrefix = apiPrefix + 'twitter/login.php?cid=';
var facebookPrefix = apiPrefix + 'facebook/login.php?cid=';
var sinaWeiboPrefix = apiPrefix + 'sinaweibo/login.php?cid=';
var windowsLivePrefix = apiPrefix + 'windowslive/login.php?cid=';
var ren, sin, msn, ccs, twt, fcb = null;

var isJapanese = window.location.pathname.search('_jp.html') > -1;
var isChinese = window.location.pathname.search('_zh.html') > -1;
var isItalian = window.location.pathname.search('_it.html') > -1;
var isGeneric = window.location.pathname.search('confirm_accounts(_[a-z][a-z])?\.html') > -1;

var SERVER_TIMEOUT = 5000;

var localization = {};

localization.error          = { en : 'Error',                         zh : '错误',            it : 'Errore',                          jp : 'エラー'};
localization.not_logged_in  = { en : 'Not logged in yet',             zh : '尚未登录',        it : 'Spento',                          jp : 'ログインしていません。'};
localization.posting_active = { en : 'Posting to __SNS__ is active!', zh : '__SNS__已激活！', it : 'Pubblicazione su __SNS__ attiva', jp : '__SNS__に送信中です'};
localization.disabled       = { en : 'Disabled',                      zh : '无效',            it : 'Disabilitato',                    jp : '無効'};
localization.sns_twitter    = { en : 'X',                             zh : 'X',               it : 'X',                               jp : 'X'};
localization.sns_instagram  = { en : 'Instagram',                     zh : 'Instagram',       it : 'Instagram',                       jp : 'Instagram'};
localization.sns_facebook   = { en : 'Facebook',                      zh : 'Facebook',        it : 'Facebook',                        jp : 'Facebook'};
localization.sns_renren     = { en : 'Renren',                        zh : '人人网',          it : 'Renren',                          jp : 'Renren'};
localization.sns_sina_weibo = { en : 'Sina Weibo',                    zh : '新浪微博',        it : 'Sina Weibo',                      jp : 'Sina Weibo'};
localization.sns_msn        = { en : 'Windows live',                  zh : 'Windows live',    it : 'Windows live',                    jp : 'Windows live'};
localization.err_timeout    = { en : 'Could not establish connection to server. Please make sure that you have internet connectivity and try again.',
                                zh : '无法连接服务器，请确认网络连接。',
                                it : 'Impossibile stabilire connessione al server. Accertati di essere connesso ad internet e riprova piu\' tardi.',
                                jp : 'サーバに接続できません。インターネットの接続状況を確認し、再接続して下さい。'};
localization.err_unknown    = { en : 'Server communication error: __ERR__',
                                zh : '通讯服务器错误：__ERR__',
                                it : 'Errore di comunicazione con il server: __ERR__',
                                jp : 'サーバ通信エラー：__ERR__'};

localization.get = function(msgObj, replacements) {
    var msg = null;

    if (isChinese) {
        msg = msgObj.zh;

        if (!msg) {
            // return english translation with marker if Chinese is not available
            msg = '***' + msgObj.en;
        }
    } else if (isItalian) {
        msg = msgObj.it;

        if (!msg) {
            // return english translation with marker if Italian is not available
            msg = '***' + msgObj.en;
        }
    } else if (isJapanese) {
        msg = msgObj.jp;

        if (!msg) {
            // return english translation with marker if Japanese is not available
            msg = '***' + msgObj.en;
        }
    } else {
        msg = msgObj.en;
    }

    if (replacements) {
        for (var key in replacements) {
            msg = msg.replace(key, replacements[key]);
        }
    }

    return msg;
}

var mapDivIdToSnsName = {
    'renren'    : localization.sns_renren,
    'twitter'   : localization.sns_twitter,
    'facebook'  : localization.sns_facebook,
    'instagram' : localization.sns_instagram,
    'sinaweibo' : localization.sns_sina_weibo,
    'msn'       : localization.sns_msn
}

function fetchLoginStatus() {
    var params = parseUrlParameters();
    cid = params.cid; 

    $.ajax({
        url: apiPrefix + "update.php",
        dataType: 'jsonp',
        data: {'cid' : cid},
        cache: false,
        timeout: SERVER_TIMEOUT,
        beforeSend: function() {
            //$('#debug').text('loading');
        },
        success: function(data) {
            updateSnsInPage(data);

            if (isGeneric && !isAndroid) {
                window.location = 'view:activateSend';
            }
        },
        error: function(jqXHR, textStatus, errorThrown) {
            $.each(['twitter', 'facebook', 'instagram'], function(index, divId) {
                $('#' + divId + ' > a').removeClass('loading');
                $('#' + divId + ' > a').addClass('disabled');
                $('#' + divId + ' > p').text(localization.get(localization.disabled));
            });

            var closeCallback = null;

            if (isGeneric) {
                closeCallback = function() {
                    window.location = 'view:close';
                }
            }

            if (textStatus === 'timeout') {
                showDialog(localization.get(localization.error), localization.get(localization.err_timeout), closeCallback);
            } else {
                showDialog(localization.get(localization.error), localization.get(localization.err_unknown, {'__ERR__': errorThrown}), closeCallback);
            }
        }
    });
}

function loginToSns(dataObj, loginUrlPrefix, snsId, mainDivId) {
    var buttonEl = $('#' + mainDivId + ' > a');

    if (buttonEl.hasClass('disabled') || buttonEl.hasClass('loading')) {
        // ignore click from disabled SNS or if still loading
        return;
    }

    $('#' + mainDivId + ' > a').removeClass('on');
    $('#' + mainDivId + ' > a').removeClass('off');
    $('#' + mainDivId + ' > a').addClass('loading');

    if (dataObj != null) {
        if (dataObj == 0) {
            blockWithLoading(function() {window.location = loginUrlPrefix + cid;});
        } else {
            $.ajax({
                url: apiPrefix + "disconnect.php",
                dataType: 'jsonp',
                data: {'cid': cid, 'sns': snsId},
                cache: false,
                beforeSend: function() {
                    blockWithLoading();
                },
                success: function(data) {
                    updateSnsInPage(data);
                    unblockWithLoading();
                },
                error: function() {
                    unblockWithLoading();
                }
            });
        }
    }
}

function loginRenren() {
    loginToSns(ren, renrenPrefix, 'ren', 'renren');
}

function loginTwitter() {
    loginToSns(twt, twitterPrefix, 'twt', 'twitter');
}

function loginFacebook() {
    loginToSns(fcb, facebookPrefix, 'fcb', 'facebook');
}

function loginSinaWeibo() {
    loginToSns(sin, sinaWeiboPrefix, 'sin', 'sinaweibo');
}

function loginWindowsLive() {
    loginToSns(msn, windowsLivePrefix, 'msn', 'msn');
}

function updateSnsInPage(data) {
    $('#debug').text('');

    function updatePage(dataObj, mainDivId) {
        if (dataObj !== null && typeof(dataObj) !== 'undefined') {
            $('#' + mainDivId + ' > a').removeClass('on');
            $('#' + mainDivId + ' > a').removeClass('off');
            $('#' + mainDivId + ' > a').removeClass('loading');
            $('#' + mainDivId + ' > a').removeClass('disabled');
            $('#' + mainDivId + ' > p').removeClass('grey');
            $('#' + mainDivId + ' > p').removeClass('blue');
            $('#' + mainDivId + ' > p').removeClass('orange');
    
            if (dataObj === 1) {
            	$('#' + mainDivId + ' > a').addClass('on');
                $('#' + mainDivId + ' > p').addClass('blue');
    
                var divText;
    
/*                if (isGeneric) { */
                    divText = localization.get(localization.posting_active);
                    divText = divText.replace('__SNS__', localization.get(mapDivIdToSnsName[mainDivId]));
/*                } */
    
                $('#' + mainDivId + ' > p').html(divText);
            } else if (dataObj === 0) {
                $('#' + mainDivId + ' > a').addClass('off');
                $('#' + mainDivId + ' > p').text(localization.get(localization.not_logged_in));
                $('#' + mainDivId + ' > p').addClass('orange');
            } else if (dataObj === -1) {
                $('#' + mainDivId + ' > a').addClass('disabled');
                $('#' + mainDivId + ' > p').text(localization.get(localization.disabled));
                $('#' + mainDivId + ' > p').addClass('grey');
            }
        }
    }

    if (typeof(data.ren) !== 'undefined') { ren = data.ren; }
    if (typeof(data.twt) !== 'undefined') { twt = data.twt; }
    if (typeof(data.fcb) !== 'undefined') { fcb = data.fcb; }
    if (typeof(data.sin) !== 'undefined') { sin = data.sin; }
    if (typeof(data.msn) !== 'undefined') { msn = data.msn; }

    updatePage(twt, 'twitter');
    updatePage(fcb, 'facebook');
}


function switchLogin(myObj, myFormId) {
    switchMe(myObj);
    onOff = (myObj.className.indexOf('on') != -1) ? 'on' : 'off';
    if (onOff == 'on') {
        showHideLogin(myFormId, 'show');
    }
    else {
        showHideLogin(myFormId, 'hide');
        loginCallBack(myFormId, 'ko');
    }
}


function showHideLogin(myFormId, showHide) {
    myForm = document.getElementById(myFormId);
    myForm.style.display = (showHide == 'show') ? 'block' : 'none';
}


function ajaxLogin(myFormId) {
    alert('Ajax login for ' +myFormId);
    ajaxResult = 'ok';

    loginCallBack(myFormId, ajaxResult);
}


function loginCallBack(loginFormId, ajaxResult) {
    showHideLogin(loginFormId, 'hide'); // In any case, hide login form
    myLoginForm = document.getElementById(loginFormId);
    myP = myLoginForm.parentNode.getElementsByTagName('p')[0];
    if (ajaxResult == 'ok') {
        myP.className = 'blue';
        myP.innerHTML = 'Posting on ' +myLoginForm.name+ ' is active.';
    }
    else {
        myP.className = 'orange';
        myP.innerHTML = 'Not logged in yet.';
    }
}

// The 2012 login server (api.cheekychuck.com) is gone, and Facebook and Instagram no longer let a game post for
// ordinary players: photos go out through the phone's share sheet (the Share button on the photo screen,
// photosend.lua), signed in with the player's own apps. So the rows explain that instead of offering a login.
localization.share_hint = { en : 'Share your photos with the camera button!',
                            zh : '用相机按钮分享你的照片！',
                            it : 'Condividi le tue foto con il pulsante della fotocamera!',
                            jp : 'カメラボタンで写真をシェアしよう！'};

function snsPageInit() {
    $.each(['twitter', 'facebook', 'instagram'], function(index, divId) {
        $('#' + divId + ' > a').remove();
        $('#' + divId).css('padding-right', '12px');
        $('#' + divId + ' > p').attr('class', 'blue').text(localization.get(localization.share_hint));
    });
    return;

    // create touch buttons
    // only X (still id "twitter"), Facebook and Instagram are listed now; Renren, Weibo and Windows Live are gone
    new TouchButton($('#twitter a').get(0),    loginTwitter);
    new TouchButton($('#facebook a').get(0),   loginFacebook);
}

addEventEgg(window, 'load', snsPageInit);
