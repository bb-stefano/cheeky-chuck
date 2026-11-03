/*** code by EGGsist | www.eggsist.com ***/

var cid = null;

var isAndroid = false;

if (window.location.search.search('android=true') > -1) {
    isAndroid = true;
} else if (sessionStorage && sessionStorage.isAndroid && sessionStorage.isAndroid === 'true') {
    isAndroid = true;
}

if (sessionStorage) {
    sessionStorage.isAndroid = isAndroid;
}

/**********************
 * DIV MESSAGE DIALOG *
 **********************/

function closeDialog() {
    var dialogOverlayEl = document.getElementById('dlgoverlay');

    if (dialogOverlayEl) {
        dialogOverlayEl.style.display = 'none';
    }

    window.onscroll = null;
}

function showDialog(title, text, closeCallback) {
    var DIALOG_TOP_OFFSET = 70;

    var dialogOverlayEl = document.getElementById('dlgoverlay');
    var dialogDivEl = document.getElementById('dlgdiv');

    if (!(dialogOverlayEl && dialogDivEl)) {
        dialogOverlayEl = document.createElement('div');
        dialogOverlayEl.id = 'dlgoverlay';

        dialogDivEl = document.createElement('div');
        dialogDivEl.id = 'dlgdiv';

        dialogOverlayEl.appendChild(dialogDivEl);
        document.body.appendChild(dialogOverlayEl);
    } else {
        dialogOverlayEl.style.display = 'block';
    }
   
    // ensure overlay stretches whole content area, not only visible viewport
    dialogOverlayEl.style.height = document.body.offsetHeight + 50 + 'px';

    dialogDivEl.innerHTML = '<p><strong>' + title + '</strong></p><p>' + text + '</p><a href="javascript:void(null);">OK</a>';

    var closeLinkEl = dialogDivEl.getElementsByTagName('a')[0];
    closeLinkEl.addEventListener('click', function() {
        closeDialog();

        if (closeCallback) {
            closeCallback();
        }
    }, false);

    dialogDivEl.style.left = ((320 - dialogDivEl.offsetWidth)  / 2) + 'px';
    dialogDivEl.style.top = (window.pageYOffset + DIALOG_TOP_OFFSET) + 'px';

    window.onscroll = function() {
        dialogDivEl.style.top = (window.pageYOffset + DIALOG_TOP_OFFSET) + 'px';
    };
}

/**********************
 * DIV MESSAGE DIALOG *
 **********************/

// pass a callback function which will be called when the loading image
// has been loaded by the browser
function blockWithLoading(callback) {
    var LOADING_IMG_TOP_OFFSET = 160;

    var blockingLoaderDivEl = document.getElementById('blockingLoader');

    if (!blockingLoaderDivEl) {
        blockingLoaderDivEl = document.createElement('div');
        blockingLoaderDivEl.id = 'blockingLoader';
        document.body.appendChild(blockingLoaderDivEl);
    } else {
        blockingLoaderDivEl.style.display = 'block';
    }

    blockingLoaderDivEl.style.height = document.body.offsetHeight + 50 + 'px';

    var loadingImg = new Image();
    loadingImg.src = 'im/load.gif';
    loadingImg.style.left = (320 / 2) + 'px';
    loadingImg.style.top = (window.pageYOffset + LOADING_IMG_TOP_OFFSET) + 'px';
    loadingImg.addEventListener('load', function() {
        // correct image position after picture is loaded (and we know the width)
        loadingImg.style.left = ((320 - loadingImg.offsetWidth) / 2) + 'px';

        if (callback) {
            callback();
        }
    }, false);

    blockingLoaderDivEl.appendChild(loadingImg);

    window.onscroll = function() {
        loadingImg.style.top = (window.pageYOffset + LOADING_IMG_TOP_OFFSET) + 'px';
    };

}

function unblockWithLoading() {
    var blockingLoaderDivEl = document.getElementById('blockingLoader');

    if (blockingLoaderDivEl ) {
        blockingLoaderDivEl.style.display = 'none';
        blockingLoaderDivEl.innerHTML = '';
    }

    window.onscroll = null;
}

/**********************
 * TOUCH BUTTON CLASS *
 **********************/
function TouchButton(element, callback, maxDistance) {
    var identifier;
    var startClientX;
    var startClientY;

    if (!maxDistance) {
        maxDistance = 50;
    }

    function onTouchStart(event) {
        if (event.targetTouches.length > 0) {
            var touch = event.targetTouches[0];
            identifier = touch.identifier;
            startClientX = touch.clientX
            startClientY = touch.clientY
        }
    }

    function onTouchEnd(event) {
        if (event.changedTouches.length > 0) {
            for (var i = 0; i < event.changedTouches.length; i++) {
                var touch = event.changedTouches[i];

                if (touch.identifier === identifier) {
                    var distance = Math.sqrt(Math.pow(touch.clientX - startClientX, 2) + Math.pow(touch.clientY - startClientY, 2));
                    if (distance <= maxDistance) {
                        callback();
                    }

                    break;
                }
            }
        }
    }

    if (!isAndroid && 'ontouchstart' in element) {
        element.addEventListener('touchstart', onTouchStart, false);
        element.addEventListener('touchend', onTouchEnd, false);
    } else {
        element.addEventListener('click', callback, false);
    }
}

/*********************
 * UTILITY FUNCTIONS *
 *********************/
function addEventEgg(obj, type, fn) {
    if (obj.attachEvent)
    {
        obj['e'+type+fn] = fn;
        obj[type+fn] = function() {obj['e'+type+fn](window.event);}
        obj.attachEvent('on'+type, obj[type+fn]);
    } else {
        obj.addEventListener(type, fn, false);
    }
}

function removeEventEgg(obj, type, fn) {
	if (obj.detachEvent) {
		obj.detachEvent('on'+type, obj[type+fn]);
		obj[type+fn] = null;
	} else {
		obj.removeEventListener(type, fn, false);
	}
}

function getElementsByClassName(classname) {
    var a = [];
    var re = new RegExp('\\b' + classname + '\\b');
    var els = this.getElementsByTagName("*");
    for (var i=0,j=els.length; i<j; i++)
        if (re.test(els[i].className)) a.push(els[i]);
    return a;
}
document.getElementsByClassName = getElementsByClassName;

function findPos() {
	obj = this;
	myLeft = 0;
	myTop = 0;
	if (obj.offsetParent) {
		myLeft = obj.offsetLeft;
		myTop = obj.offsetTop;
		while (obj = obj.offsetParent) {
			myLeft += obj.offsetLeft;
			myTop += obj.offsetTop;
		}
	}
	this.posLeft = myLeft;
	this.posTop = myTop;
}

function initDrag() {
    myCursors = document.getElementsByClassName('cursor');
    for (i=0; i<myCursors.length; i++) {
        myC = myCursors[i];
        myC.findPos = findPos;
        myC.parentNode.findPos = findPos;
        //addEventEgg(myC, 'touchstart', startDrag);
        //addEventEgg(myC, 'touchmove', dragMove);
        //addEventEgg(myC, 'touchend', stopDrag);

        if ('ontouchmove' in myC) {
            myC.ontouchmove  = dragMove;
            myC.ontouchend   = stopDrag;
            myC.ontouchstart = startDrag;
        } else {
            myC.onmousemove = dragMove;
            myC.onmouseup   = stopDrag;
            myC.onmousedown = startDrag;
        }
    }
}

function blockBehavior(e) {
	functionName = (window.event) ? "event.returnValue=false;" : "e.preventDefault()";
	eval(functionName);
}

/*********************
 *  CHUCK FUNCTIONS  *
 *********************/
function startDrag(e) {
	if (!e) { var e = window.event}

    //Define boundaries
    myC.findPos();
    myC.parentNode.findPos();
    myC.minX = 0 - myC.offsetWidth/2;
    myC.maxX = myC.parentNode.offsetWidth - myC.offsetWidth/2;
    fingerPos = getXpos(e);
    myC.xDiff = fingerPos - (myC.posLeft - myC.parentNode.posLeft);

	this.dragging = true;
}

function dragMove(e) {

	for (k=0; k<document.getElementsByClassName("cursor").length; k++) {
		myC = document.getElementsByClassName("cursor")[k];
		if (myC.dragging) {
            //alert('dragMove!');
			if (!e) {var e = window.event;}

            //calculate new position
            fingerPos = getXpos(e);
            newPosition = fingerPos - myC.xDiff;

			//move cursor
			if (newPosition >= myC.minX && newPosition <= myC.maxX) {
                myC.style.left = newPosition + 'px';
            }
            else if (newPosition < myC.minX) {
                myC.style.left = myC.minX + 'px';
            }
            else if (newPosition < myC.maxX) {
                myC.style.left = myC.maxX + 'px';
            }

            if (!isAndroid) {
                setMVolume();
            }

			return false;
		}
	}
}

function getXpos(e) {
	var xPos;
	if (e.touches && e.touches.length) { //iPhone
		xPos = e.touches[0].clientX;
	} else { //all others
		xPos = e.clientX;
	}
	return xPos;
}

function stopDrag() {
	this.dragging = false;
	removeEventEgg(this, 'touchmove', dragMove);

    if (isAndroid) {
        setMVolume();
    }
}

function switchMe(myA) {
    myA.className = (myA.className=='switch off') ? 'switch on' : 'switch off';
}

function convertPxVol(myVol) {
    myScroller = document.getElementById('volumeScroller');
    myCursor = myScroller.getElementsByTagName('a')[0];
    pxStart = 0;
    pxEnd = parseInt(myScroller.offsetWidth);
    if (typeof(myVol) !== 'number' && typeof(myVol) !== 'string') {
        conv = (parseInt(myCursor.style.left) + parseInt(myCursor.offsetWidth)/2) / pxEnd;
        conv = Math.round(conv * Math.pow(10, 2)) / Math.pow(10, 2); //round up to 2 decimals
        //alert('set vol: ' +conv);
    }
    else {
        conv = (myVol * parseInt(pxEnd)) - parseInt(myCursor.offsetWidth)/2;
        //alert('set px: ' +conv);
    }
    return conv;
}


/*********************
 *   SEND SETTINGS   *
 *********************/
function addOrReplaceParam(url, name, newValue) {
    var newLocation = url;
    var paramsStartIndex = url.indexOf('?');

    if (paramsStartIndex > -1) {
        var paramStartRe = new RegExp('[\?&]' + name + '=');
        var paramStartIndex = url.search(paramStartRe, paramsStartIndex);

        if (paramStartIndex > -1) {
            var tail = url.substring(paramStartIndex + 1);
            var paramEndIndex = tail.indexOf('&');

            if (paramEndIndex > -1) {
                newLocation = url.substring(0, paramStartIndex + 1) + name + '=' + newValue + tail.substring(paramEndIndex);
            } else {
                // is last parameter

                var paramChar = '&';

                if (paramsStartIndex === paramStartIndex) {
                    // is only parameter
                    paramChar = '?';
                }

                newLocation = url.substring(0, paramStartIndex) + paramChar + name + '=' + newValue;
            }
        } else {
            newLocation = url + '&' + name + '=' + newValue;
        }
    } else {
        newLocation = url + '?' + name + '=' + newValue;
    }

    return newLocation;
}

function reloadPageAndReplaceParam(name, newValue) {
    var newLocation = addOrReplaceParam(window.location.href, name, newValue);
    newLocation = addOrReplaceParam(newLocation, 'rnd', Math.ceil(Math.random() * 10000000));
    window.location = newLocation;
}

function setBackground(myLink, animName) {
    if (selectBg(myLink.id)) {
        // only change background if selectBg returns true (ie. background is unlocked)

        if (sessionStorage) {
            sessionStorage.background = animName
        }
    
        if (isAndroid) {
            reloadPageAndReplaceParam('background', animName);
        } else {
            self.location = "setting:background=" + animName;
        }
    }
}

function setSoundFx(myLink) {
    var trueFalse = (myLink.className.indexOf('on') != -1) ? true : false;

    if (sessionStorage) {
        sessionStorage.soundfx = trueFalse;
    }

    if (isAndroid) {
        reloadPageAndReplaceParam('soundfx', trueFalse);
    } else {
        self.location = "setting:soundfx=" + trueFalse;
    }
}

function setSoundBg(myLink) {
    var trueFalse = (myLink.className.indexOf('on') != -1) ? true : false;

    if (sessionStorage) {
        sessionStorage.soundbg = trueFalse;
    }

    if (isAndroid) {
        reloadPageAndReplaceParam('soundbg', trueFalse);
    } else {
        self.location = "setting:soundbg=" + trueFalse;
    }
}

function setMVolume(myVol) {
    if (typeof(myVol) !== 'number') {
        myVol = convertPxVol(false);
    }

    if (sessionStorage) {
        sessionStorage.vol = myVol
    }

    if (isAndroid) {
        reloadPageAndReplaceParam('mvolume', myVol.toFixed(1));
    } else {
        self.location = "setting:mvolume=" + myVol;
    }
}

/*********************
 * VOLUME CONTROL    *
 *********************/

function changeVolumeLevel(delta) {
    var currentVol = convertPxVol();
    var newVol     = currentVol + delta;

    if (newVol < 0) {
        newVol = 0;
    } else if (newVol > 1) {
        newVol = 1;
    }

    setMVolume(newVol);
    
    return true;
}

/*********************
 * LOAD SETTINGS     *
 *********************/

function loadSettingsFromSessionStore() {
    if (sessionStorage) {
        function loadSoundFromSessionStore(key) {
            if (sessionStorage[key]) {
                loadSound(key, sessionStorage[key]);
            }
        }

        function unlockBackgroundFromSessionStore(key, bgId) {
            var val = sessionStorage[key];
            if (val && val === 'true') {
                unlockBg(bgId);
            }
        }

        loadSoundFromSessionStore('soundfx');
        loadSoundFromSessionStore('soundbg');
        unlockBackgroundFromSessionStore('bg2unlocked', 'anim_background_02');
        unlockBackgroundFromSessionStore('bg3unlocked', 'anim_background_03');

        if (sessionStorage.background) {
            selectBg(sessionStorage.background);
        }

        if (sessionStorage.vol) {
            loadVolume(sessionStorage.vol);
        }
    } else {
        //alert("loadSettings: no session storage");
    }
}

// parses the URL of the page (window.location) and returns an
// object with key/value pairs of the URL parameters
function parseUrlParameters() {
    var result = {};

    var paramIndex = window.location.href.indexOf('?');

    if (paramIndex > -1) {
        var paramStr = window.location.href.substring(paramIndex + 1);
        var params = paramStr.split('&');

        for (var i=0; i<params.length; i++) {
            var keyVal = params[i].split('=');
            var key = keyVal[0];
            var val = keyVal[1];

            result[key] = val;
        }
    }

    return result;
}

function loadSettings() {
    if (window.location.href.indexOf('?') > -1) {
        var params = parseUrlParameters();

        for (var key in params) {
            var val = params[key];

            if (key.indexOf('sound') != -1) {
                if (sessionStorage) {
                    sessionStorage[key] = val;
                }

                loadSound(key, val);
            } else if (key == 'background') {
                if (sessionStorage) {
                    sessionStorage.background = val;
                }

                selectBg(val);
            } else if (key == 'mvolume') {
                if (sessionStorage) {
                    sessionStorage.vol = val;
                }

                loadVolume(val);
            } else if (key == 'cid') {
                loadLinkWithId(val);
            } else if (key == 'bg2unlocked') {
                if (sessionStorage) {
                    sessionStorage.bg2unlocked = val;
                }

                if (val == 'true') {
                    unlockBg('anim_background_02');
                }
            } else if (key == 'bg3unlocked') {
                if (sessionStorage) {
                    sessionStorage.bg3unlocked = val;
                }

                if (val == 'true') {
                    unlockBg('anim_background_03');
                }
            }
        }

    }

    // reload settings from session store if redirected from page with
    // some parameters, but not the actual settings
    loadSettingsFromSessionStore();
}

function unlockBg(bgId) {
    $('#' + bgId).removeClass('locked');
}

// return true if chosen background is unlocked and can actually be chosen
// return false if background is locked
function selectBg(bgId) {
    var bgA = $('#' + bgId);

    if (!bgA.hasClass('locked')) {
        $('#thumbs > a').removeClass('on');
        bgA.addClass('on');
        return true;
    }

    return false;
}

function loadSound(key, val) {
    //alert('(loadSound) setting sound: ' +mySwitch.id+ '=' +val);
    var mySwitch = document.getElementById(key);

    if (mySwitch) {
        mySwitch.className = (val=='true') ? 'switch on' : 'switch off';
    }
}

function loadVolume(myVol) {
	//alert('(loadVolume) setting volume: ' + myVol);

    if (isAndroid) {
        var vol = parseFloat(myVol);

        // vol should only have values as 0.2, 0.4, 0.6, ...
        myVol = 0.2 * Math.floor(Math.round(vol / 0.2));
    }

    myScroller = document.getElementById('volumeScroller');

    if (myScroller) {
        myCursor = myScroller.getElementsByTagName('a')[0];
        myPx = convertPxVol(myVol);
        myCursor.style.left = myPx + 'px';
    }
}

function loadLinkWithId(myId) {
	//alert('(loadLinkWithId) setting link: ' + myId);
    myLink = document.getElementById('switchTab');
    if (myLink && myLink.href.indexOf('cid=') == -1) {
        myLink.href = myLink.href + '?cid=' + myId;
        cid = myId;
    }
}

if (!isAndroid) {
    addEventEgg(window, 'load', initDrag);
} else {
    addEventEgg(window, 'load', function(){
        $('#incVolBtn').click(function(){changeVolumeLevel(0.2);});
        $('#decVolBtn').click(function(){changeVolumeLevel(-0.2);});
    });
}

addEventEgg(window, 'load', loadSettings);
