//= require jquery3
//= require popper
//= require bootstrap-sprockets

import "@hotwired/turbo-rails"


$(document).on('turbo:load', function() {
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
    tooltipTriggerList.forEach(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
})
