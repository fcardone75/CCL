document.addEventListener('DOMContentLoaded', () => {
    check_confidi_required();

    const body = $('body');
    body.on('click', 'button[type="submit"]', function (e) {
        if (check_confidi_selected() !== check_confidi_selected()) {
            e.preventDefault();
        }
    });

    $('#User_roles').change(function() {
//        alert('User_roles change');
        check_confidi_required();
    })
});

function check_confidi_required() {
//    alert('check_confidi_required');
    let result = false;
    let confidi = $('#User_confidi');
    let roles = $('#User_roles');
//    alert(roles.val());
    if (roles.val().indexOf('ROLE_OPERATORE_CONFIDI')>-1) {
        confidi.attr('required', true);
        confidi.parent().prev().addClass('required');
        result = true;
    } else {
        confidi.attr('required', false);
        confidi.parent().prev().removeClass('required');
    }
    return result;
}

function check_confidi_selected() {
    let result = false;
    let confidi = $('#User_confidi');
    if (check_confidi_required() && confidi.val()) {
        result = true;
    }
    return result;
}
