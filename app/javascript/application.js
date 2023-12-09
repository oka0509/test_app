//= require jquery3
//= require popper
//= require bootstrap-sprockets

import "@hotwired/turbo-rails"

$(document).on('turbo:load', function() {
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
    tooltipTriggerList.forEach(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));

    const diaryAddButton = $('#diary-create-button');
    diaryAddButton.prop("disabled", true);
    console.log(diaryAddButton)
    $('#diary-content').keyup(function() {
        if($(this)[0].value == '') {
            console.log('if')
            diaryAddButton.prop("disabled", true);
        } else {
            console.log('else')
            diaryAddButton.prop("disabled", false);
        }
    });
})
