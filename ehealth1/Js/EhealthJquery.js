/* for registration process  and for validation*/
$(document).ready(function () {
   
    var UserType;
    var UserEmailAddress;
    var UserPassword;
    $('#ContributorRdb').click(function () {
        $("#CategorySelect").attr("disabled", true);
        UserType = $('input:radio[name=choose]:checked').val();
    });
    $('#CategoryRdb').click(function () {
        $("#CategorySelect").attr("disabled", false);
    });

    $('#Register').click(function () {
       
        if (UserType != $('input:radio[name=choose]:checked').val()) {
            UserType = $('#CategorySelect').val();
        }
        else {

        }
        UserEmailAddress = $('#txtUserEmailAddress').val();
        UserPassword = $('#txtUserPassword').val();
        
        if (UserEmailAddress!= null && UserPassword!= null && UserType!= null) {
            $.ajax({

                type: "POST",
                data: "{'userEmailAddress':'" + UserEmailAddress + "','userPassword':'" + UserPassword + "','userType':'" + UserType + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                url: "EhealthWebMethod.asmx/SaveRegInfoData",
                success: function (response) {
                    alert(response.d);

                }
            });
        }
       else {
           
        }
    });

})

 
/* For login button */





$(document).ready(function () {
    $('#btnLogin').click(function () {

        var LgnEmailAddress = $('#txtlgnUserEmailAddress').val();
        var LgnPassword = $('#txtlgnUserPassword').val();
       
        alert(LgnEmailAddress + LgnPassword);
        $.ajax
        ({
            type: "POST",
            data: "{'UserEmailAddress':'" + LgnEmailAddress + "','UserPassword' : '" + LgnPassword + "' }",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: "EhealthWebMethod.asmx/LoginVerification",
            async: "true",
            success: function (response)
            {
                msg = eval('(' + response.d + ')');
               
               
                $('#lblUserEmailAddress').text(msg.UserEmailAddress);
                sessionStorage.setItem("emailAddress",msg.UserEmailAddress);
                $('#txtSessionID').val(msg.UserID);
                if (msg.UserID != '0')
                {
                    sessionStorage.setItem("id", msg.UserID);

                    // var AfterLogin = "<p>" + "Welcome" + msg.UserEmailAddress + "</p>";
                    // var table = "<p>" + "Successfully Logged In" + "</p>"

                    //   $('#errorMsg').html(AfterLogin);
                   
                    $.ajax
                     ({

                       type: "POST",
                       data: "{'SessionID':'" + sessionStorage.getItem("id") + "','SessionEmailAddress':'" + sessionStorage.getItem("emailAddress") + "'}",
                       contentType: "application/json; charset=utf-8",
                       dataType: "json",
                       url: "EhealthWebMethod.asmx/StoreSessionValue",
                       async: "true",
                       success: function (response) {
                           alert("Logged In Successfully with" + response.d);
                           $('#registerLogin').hide();
                           $('#welcomeLogin').css("display", "block");
                       }

                   });

                }
                else {

                    //  var table = "<p>" + "Username and Password Didn't matcha" + "</p>"
                    // $('#loginbhaye').html(table);
                    alert("bhayena");
                    $('#registerLogin').css("display", "block");
                    $('#welcomeLogin').hide();

                }


            }




        });
     //   if (sessionStorage.getItem('id')!=null) {
           
      //  }
    });



})

$(document).ready(function () {
    if(sessionStorage.getItem('emailAddress')!=null)
    {
       
        $('#lblUserEmailAddress').text(sessionStorage['emailAddress']);
       
    }
})

$(document).ready(function () {
    $('#btnlogout').click(function () {
        sessionStorage.clear();
        $('#registerLogin').css("display", "block");
        $('#welcomeLogin').hide();
        $.ajax
        ({

            type: "POST",
            data: "{}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: "EhealthWebMethod.asmx/RemoveSessionValue",
            async: "true",
            success: function (response) {
                alert(response.d);

            }
        });

    });
})
