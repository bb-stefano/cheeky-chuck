$(document).ready(function() {

    var thismoment = new Date();
    var year = thismoment.getYear() + 1900;
    var month = thismoment.getMonth() + 1;
    var day = thismoment.getDate();

    if (month==12 && day>=20 && day <=31) {
        $('#anim_background_01').hide();
        $('#anim_background_christmas_01').show();
    } else if (year == 2013 && month == 2 && day >= 10 && day <= 20) {
        $('#anim_background_01').hide();
        $('#anim_background_newyear').show();
    } else if (month == 2 && day >= 13 && day <= 15) {
        $('#anim_background_01').hide();
        $('#anim_background_valentinesday').show();
    }
});


function configurationCreateTouchButtons() {
    var soundFxBtn = document.getElementById('soundfx');
    new TouchButton(soundFxBtn, function() {
        switchMe(soundFxBtn);
        setSoundFx(soundFxBtn);
    });

    var soundBgBtn = document.getElementById('soundbg');
    new TouchButton(soundBgBtn, function() {
        switchMe(soundBgBtn);
        setSoundBg(soundBgBtn);
    });
}

addEventEgg(window, 'load', configurationCreateTouchButtons);
