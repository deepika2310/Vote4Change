let username,password,cpassword,city,address,mobile,adhar,email;
function addUser()
{
  username=$("#username").val();
  password=$("#password").val();
  cpassword=$("#cpassword").val();
  city=$("#city").val();
  address=$("#address").val();
  mobile=$("#mobile").val();
  adhar=$("#adhar").val();
  email=$("#email").val();
  if(validateUser())
  {
      if(password!==cpassword)
      {
          swal("Error!","Password do not match!","error");
          return;
       }
      else
      {
          if(checkEmail===false)
              return;
          if(checkMobile===false)
              return;
          let data={
              username:username,
              password:password,
              city:city,
              address:address,
              userid:adhar,
              email:email,
              mobile:mobile
          };
          let xhr=$.post("RegistrationControllerServlet",data.processResponse);
      }   
  }
}
function processResponse(responseText,textStatus,shr)
{
        let str=responseText.trim();
        if(str==="success")
        {
            swal("success!","Registration done successfully!","success");
            setTimeout(redirectUser,3000);
        }
        else if(str==="error")
            swal("Error!","Sorry! userid is already present!","error");
        else
            swal("Error!","registration Failed! Try Again","error");
}

function handleError(xhr)
{
    swal("Error","Problem in server communication"+xhr.statusText,"error");
}

function validateUser()
{
    if(username===""||password===""||cpassword===""||city===""||address===""||adhar===""||mobile===""||email==="")
    {
        swal("Error!","All fields are mandatory!","error");
        return false;
    }
    return true;
}
function checkEmail()
{
    let attheratepos=email.indexOf("@");
    let dotpos=email.indexOf(".");
    if(attheratepos<1|| dotpos<attheratepos+2 || dotpos+2>=email.length)
    {
        swal("Error!","Please enter a valid email!","error");
        return false;
    }
    return true;
}
function checkMobile()
{
    if(mobile.length===10 && isNumeric(mobile))
        return true;
    return false;
}
function redirectUser()
{
    window.location="login.html";
}