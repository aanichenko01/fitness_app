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
    $("form").validate({
        //Validation rules
        rules: {
          name: 'required',
          email: 'required',
          message: 'required'
        },
        //Validation error messages
        messages: {
          name: 'Please enter your firstname',
          email: 'Please enter a valid email address',
          message: 'Please enter a message'
        },
        submitHandler: function(form) {
          form.submit();
        }
      });
}

function SelectableRows(){
  $(document).on('dblclick', 'td', function(){
    var page_url = 'localhost:3000/workouts/' + this.className;
    alert(page_url);
  });
}


$(document).ready(function() {
      ValidateForm();
      SelectableRows()
});
  
