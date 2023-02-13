/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
function check() {
    var fname = document.getElementById("Fname").value;
    var lname = document.getElementById("Lname").value;
    var phone = document.getElementById("Phone").value;
    var pass = document.getElementById("password").value;
    var repass = document.getElementById("repassword").value;
    var regPhone = /(84|0[3|5|7|8|9])+([0-9]{8})\b/;
    if (fname === "" && lname === "" && phone === "" && pass === "" && repass == "") {
        document.getElementById("Error").innerHTML = "Please enter all filed!";
        return false;
    }
    if (phone === "") {
        document.getElementById("phoneError").innerHTML = "Please enter phone!";
        return false;
    } else if (!regPhone.test(phone)) {
        document.getElementById("phoneError").innerHTML = "Phone must be 10 number!";
        return false;
    }
    if (pass === "") {
        document.getElementById("passwordError").innerHTML = "Please enter password";
        return false;
    } else if (repass !== pass) {
        document.getElementById("repasswordError").innerHTML = "Please enter like password";
        return false;
    }

}
