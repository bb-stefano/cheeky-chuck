//***************************************************//
//***   Script by EGGsist Ltd - www.eggsist.com   ***//
//***************************************************//

var postmsg = {};

postmsg.messageElem         = null;
postmsg.supportsPlaceholder = true;
postmsg.hasEditedText       = false; // only needed if placeholder is not supported

postmsg.cancelPost = function() {
    window.location = 'postmsg:cancel';

    return true;
}

postmsg.postMessage = function() {
    var message = postmsg.messageElem.value;

    if (!postmsg.supportsPlaceholder && !postmsg.hasEditedText) {
        message = '';
    }

    window.location = 'postmsg:submit?msg=' + message;

    return true;
}

postmsg.init = function() {
    postmsg.messageElem = document.getElementById('message');

    var params = parseUrlParameters();

    if (params['msg']) {
        postmsg.messageElem.value = decodeURIComponent(params['msg']);
    }

    new TouchButton(document.getElementById('cancelBtn'), postmsg.cancelPost);
    new TouchButton(document.getElementById('okBtn'), postmsg.postMessage);

    if (!('placeholder' in document.createElement('textarea'))) {
        // browser does not support placeholder attribute on input elements

        postmsg.messageElem.value = postmsg.messageElem.getAttribute('placeholder');
        postmsg.supportsPlaceholder = false;

        addEventEgg(postmsg.messageElem, 'focus', function() {
            postmsg.messageElem.value = '';
            postmsg.hasEditedText     = true;
        });

        addEventEgg(postmsg.messageElem, 'blur', function() {
            if (postmsg.messageElem.value == '') {
                postmsg.messageElem.value = postmsg.messageElem.getAttribute('placeholder');
                postmsg.hasEditedText     = false;
            }
        });
    }
}

addEventEgg(window, 'load', postmsg.init);

