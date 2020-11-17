// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require bootstrap-sprockets
//= require jquery.validate
//= require jquery3
//= require jquery_ujs
//= require activestorage
//= require turbolinks
//= require_tree .

function ValidateForm(){
    // Initialize form validation on the registration form.
    // It has the name attribute "registration"
    $("form").validate({
        // Specify validation rules
        rules: {
          // The key name on the left side is the name attribute
          // of an input field. Validation rules are defined
          // on the right side
          name: 'required',
          email: 'required',
          message: 'required'
        },
        // Specify validation error messages
        messages: {
          name: 'Please enter your firstname',
          email: 'Please enter a valid email address',
          message: 'Please enter a message'
        },
        // Make sure the form is submitted to the destination defined
        // in the "action" attribute of the form when valid
        submitHandler: function(form) {
          form.submit();
        }
      });
}

$(document).ready(function() {
    
      ValidateForm();
  
  });
  
