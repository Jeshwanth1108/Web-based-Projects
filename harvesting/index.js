function validation(){
    if(document.formfill.username.value==""){
        document.getElementById("result").innerHTML="Enter UserName";
        return false;
    }
    else if(document.formfill.username.value.length<6){
        document.getElementById("result").innerHTML="Atleast 6 characters";
        return false;
    }
    else if(document.formfill.Email.value==""){
        document.getElementById("result").innerHTML="Enter Email";
        return false;
    }
    else if(document.formfill.password.value==""){
        document.getElementById("result").innerHTML="Enter your password";
        return false;
    }
    else if(document.formfill.password.value.length<=8){
        document.getElementById("result").innerHTML="password must be 8 character";
        return false;
    }
    else if(document.formfill.cpassword.value==""){
        document.getElementById("result").innerHTML="Enter confirm password";
        return false;
    }
    else if(document.formfill.cpassword.value!=document.formfill.password.value){
        document.getElementById("result").innerHTML="password does not matched";
        return false;
    }
}