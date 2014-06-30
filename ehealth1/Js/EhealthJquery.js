/* for registration process  and for validation*/
$(document).ready(function () {
    alert("jquery");
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
        UserEmailAddress = $('#txtUserEmailAddress').val();
        UserPassword = $('#txtUserPassword').val();
       


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
    });

})

 
/* For login button */





$(document).ready(function () {
    $('#btnLogin').click(function () {
        alert("login jquery chiryo");
        var LgnEmailAddress = $('#txtlgnUserEmailAddress').val();
        var LgnPassword = $('#txtlgnUserPassword').val();
        $.ajax
        ({
            type: "POST",
            data: "{'UserEmailAddress':'" + LgnEmailAddress + "','UserPassword' : '" + LgnPassword + "' }",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: "EhealthWebMethod.asmx/LoginVerification",
            success: function (response) {
                var msg = eval('(' + response.d + ')');
                $("#txtSessionID").val(msg.UserID);

               
            }
        });
    });
})