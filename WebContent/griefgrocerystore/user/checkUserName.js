$(document).ready(
    function () {
        $("#username").on("blur",function () {
            var username=$("#username").val();
            console.log(username);
            $.post("/griefgrocerystore/namecheck.html","username="+username
                ,function (res) {
                    console.log(res);
                    $("#checkuser").html(res);
                })
        })
    }
);