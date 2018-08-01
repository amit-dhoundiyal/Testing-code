//= require active_admin/base
//= require active_admin_flat_skin
//= require jquery
//= require jquery.validate


 $(document).click(function(){
       $("#session_new").validate({
       	 errorElement: 'div',
         wrapper: 'div',
      errorPlacement: function (error, element) {
       error.insertBefore(element);
       },

        rules: {
         "admin_user[email]":{
          required: true,
          maxlength: 50,
          email: true
        },
        "admin_user[password]":{
          required: true,
          maxlength: 20,
          minlength: 6
        }
         
      },
     
      messages: {

        "admin_user[email]":{
          required: "This field is required",
          minlength: "Password should not be more than 6 characters",
          maxlength: "Email should not be more than 30 characters"

        },
       
        "admin_user[password]":{
          required: "This field is required",
          minlength: "Password should not be more than 6 characters",
          maxlength: "Password should not be more than 50 characters"
         

        }
      }
     });
    });

