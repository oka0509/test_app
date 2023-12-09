//= require jquery3
//= require popper
//= require bootstrap-sprockets

import "@hotwired/turbo-rails"

$(document).on('turbo:load', function() {
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
    tooltipTriggerList.forEach(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));

    const diaryAddButton = $('#diary-create-button');
    diaryAddButton.prop("disabled", true);
    $('#diary-content').keyup(function() {
        if($(this)[0].value == '') {
            diaryAddButton.prop("disabled", true);
        } else {
            diaryAddButton.prop("disabled", false);
        }
    });
})
