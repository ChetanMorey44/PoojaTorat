<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css?family=PT+Sans:400,700');
html {
    font-size: 10px;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    box-sizing: border-box;
}
*, *:before, *:after {
    margin: 0;
    padding: 0;
    box-sizing: inherit;
}
body {
    font-family: 'PT Sans', sans-serif;
    font-size: 16px;
    line-height: 1.428571429;
    font-weight: 400;
    color: #fff;
}
.row{
    display: flex;
    align-items: center;
    justify-content: center;
}
.section{
    background-color: #3D4067;
    position: relative;
    overflow: hidden;
    display: flex;
    justify-content: center;
    flex-direction: column;
}
header,
main,
footer{
    display: block;
    position: relative;
    z-index: 1;
}
header{
    padding: 48px;
    @media (max-width: 440px){
        padding: 48px 24px;
    }
    >h3{
        font-size: 44px;
        font-weight: 700;
        margin-bottom: 8px;
    }
    >h4{
        font-size: 22px;
        font-weight: 400;
        letter-spacing: 1px;
    }
}
main{
    flex: 1;
    padding: 0 48px;
    @media (max-width: 440px){
        padding: 0 24px;
    }
}
footer{
    width: 100%;
    background-color: #524F81;
    padding: 16px;
    align-self: center;
    text-align: center;
    margin-top: 32px;
    a{
        color: #fff;
        font-weight: 700;
        text-decoration: none;
        &:hover{
            text-decoration: underline;
        }
    }
}
form{
    height: 100%;
    display: flex;
    justify-content: center;
    flex-direction: column;
}
.label{
    color: rgba(226, 227, 232, .75);
    font-size: 16px;
}
small{
    display: none;
    &.errorOnce{
        margin-top: 2px;
    }
}
.form-item{
    input[type="text"],
    input[type="number"],
    input[type="email"]{
        display: block;
        color: #E2E3E8;
        font-size: 16px;
        width: 100%;
        background-color: transparent;
        border: none;
        border-bottom: 1px solid #75759E;
        padding: 8px 0;
        appearance: none;
        outline: none;
    }
    small{
        /*letter-spacing: 1px;*/
    }
    i{
        font-size: 12px;
        color: red;
    }
}
.box-item{
    height: 60px;
    margin-bottom: 16px;
}
.form-item-double{
    display: flex;
    .form-item{
        flex: 1 1 auto;
    }
    .form-item:nth-child(1){
        padding-right: 16px;
    }
    .form-item:nth-child(2){
        padding-left: 16px;
    }
}
.form-item-triple{
    display: flex;
    align-items: center;
    padding-top: 6px;
    .radio-label{
        flex: 1 1 auto;
        text-align: left;
        label{
            display: inline-block;
            vertical-align: middle;
        }
    }
    .form-item{
        flex: 3 1 auto;
        text-align: center;
        margin: 0;
        label,input[type="radio"]{
            display: inline-block;
            vertical-align: middle;
            margin: 0 4px;
        }
    }
}

::-webkit-input-placeholder { /* WebKit, Blink, Edge */
    color: rgba(226, 227, 232, .75);
    font-size: 16px;
}
:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
    color: rgba(226, 227, 232, .75);
    font-size: 16px;
    opacity:  1;
}
::-moz-placeholder { /* Mozilla Firefox 19+ */
    color: rgba(226, 227, 232, .75);
    font-size: 16px;
    opacity:  1;
}
:-ms-input-placeholder { /* Internet Explorer 10-11 */
    color: rgba(226, 227, 232, .75);
    font-size: 16px;
}
::-ms-input-placeholder { /* Microsoft Edge */
    color: rgba(226, 227, 232, .75);
    font-size: 16px;
}
.submit{
    display: inline-block;
    font-size: 18px;
    font-weight: 700;
    letter-spacing: 1px;
    padding: 8px 48px;
    margin-top: 32px;
    border: 2px solid #75759E;
    border-radius: 20px;
    cursor: pointer;
    transition: all ease .2s;
    &:hover{
        background-color: #EDA261;
        border: 2px solid #EDA261;
    }
}
.wave{
  position: absolute;
  top: 0;
  left: 50%;
  width: 800px;
  height: 800px;
  margin-top: -600px;
  margin-left: -400px;
  background: #252E45;
  border-radius: 40%;
  animation: shift 20s infinite linear;
  z-index: 0;
}
@keyframes shift{
  from{
    transform: rotate(360deg);
  }
}



</style>
</head>

<%
	  if(request.getParameter("submit")!=null){
		  String Name = request.getParameter("name");
		  String Email = request.getParameter("email");
		  String Type = request.getParameter("type");
		  String Date = request.getParameter("date");
		  String pass=request.getParameter("pass");
		  String Gender = request.getParameter("gender");
		  String Address = request.getParameter("address");
		  String Phone = request.getParameter("phone");
		  
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/datanew" , "root" , "root");
		  Statement st = con.createStatement();
		  st.executeUpdate("insert into demo (name , email ,pass, type , date , gender, address, phone) value ('"+Name+"' , '"+Email+"' ,'"+pass+"' , '"+Type+"' , '"+Date+"' , '"+Gender+"' , '"+Address+"','"+Phone+"')");
		  out.print("<script>alert('Successfully Done inserted !! ')</script>");
	  }
	%>
<body>
<div class="row">
  <section class="section">
    <header>
      <h3>Register</h3>
      <h4>Please fill your information bellow</h4>
    </header>
    <main>
      <form action="#" method="get">
        <div class="form-item box-item">
          <input type="text" name="name" placeholder="Name" data-required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
        <div class="form-item box-item">
          <input type="email" name="email" placeholder="Email" data-email data-required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
          <small class="errorEmail"><i class="fa fa-asterisk" aria-hidden="true"></i> email is not valid</small>
        </div>
        
         <div class="form-item box-item">
                        <label class="form-label">Password</label>
                        <input type="password" id="pass" class="" placeholder="Password" name="pass"  required >
                     </div>
        <div class="form-item box-item">
          <div class="form-item-triple">
            <div class="radio-label"> 
              <label class="label">Gender</label>
            </div>
            <div class="form-item"> 
              <input id="Male" type="radio" name="gender" value="Male" data-once>
              <label for="Male">Male</label>
            </div>
            <div class="form-item"> 
              <input id="Female" type="radio" name="gender" value="Female" data-once>
              <label for="Female">Female</label>
            </div>
          </div>
          <small class="errorOnce"><i class="fa fa-asterisk" aria-hidden="true"></i> choose at least one</small>
        </div>
        <div class="form-item box-item">
          <div class="form-item-triple">
            <div class="radio-label"> 
              <label class="label">Type</label>
            </div>
            <div class="form-item"> 
              <input id="sponsored" type="radio" name="type" value="sponsored" data-once>
              <label for="sponsored">sponsored</label>
            </div>
            <div class="form-item"> 
              <input id="paid" type="radio" name="type" value="paid" data-once>
              <label for="paid">paid</label>
            </div>
          </div>
          <small class="errorOnce"><i class="fa fa-asterisk" aria-hidden="true"></i> choose at least one</small>
        </div>
        <div class="form-item box-item">
          <input type="text" name="address" placeholder="Address" data-required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
        <div class="form-item-double box-item">
          <div class="form-item">
            <input type="date" name="date" placeholder="Date" data-required data-number>
            <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
            <small class="errorNum"><i class="fa fa-asterisk" aria-hidden="true"></i> must be a number</small>
          </div> 
        </div>
        <div class="form-item box-item">
          <input type="text" name="phone" placeholder="Phone" data-required data-number data-count="10">
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
          <small class="errorNum"><i class="fa fa-asterisk" aria-hidden="true"></i> must be a number</small>
          <small class="errorChar"><i class="fa fa-asterisk" aria-hidden="true"></i> must be 10 digits</small>
        </div>
        <div >
          <button  class="submit" type="submit" name="submit">Submit</button>
        </div>
      </form>
    </main>
    <footer>
      <p>Already have an account? <a href="Login.jsp">Login here</a></p>
    </footer>
    <i class="wave"></i>
  </section>
</div>


<script>
$(document).ready(function (){
    
    var Validation = (function (){
        var emailReg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        var digitReg = /^\d+$/;
        
        var isEmail = function (email){
            return emailReg.test(email);
        };
        var isNumber = function (value){
            return digitReg.test(value);
        };
        var isRequire = function (value){
            return value == "";
        };
        var countChars = function (value, count){
            return value.length == count;
        };
        var isChecked = function (el){
            var hasCheck = false;
            el.each(function (){
                if($(this).prop('checked')){
                    hasCheck = true;
                }
            });
            return hasCheck;
        };
        return {
            isEmail : isEmail,
            isNumber : isNumber,
            isRequire: isRequire,
            countChars: countChars,
            isChecked: isChecked
        };
    })();
    
    var required = $('form').find('[data-required]');
    var numbers = $('form').find('[data-number]');
    var emails = $('form').find('[data-email]');
    var once = $('form').find('[data-once]');
    var radios = $('.form-item-triple');
    var groups = [];
    radios.each(function (){
        groups.push($(this).find('[data-once]'));
    });
    var counts = $('form').find('[data-count]');
    
    $('#submit').on('click', function (){
        required.each(function (){
            if(Validation.isRequire($(this).val())){
                $(this).siblings('small.errorReq').show();
            }
        });
        emails.each(function (){
            if(!Validation.isEmail($(this).val())){
                $(this).siblings('small.errorEmail').show();
            }
        });
        $.each(groups, function (){
            if(!Validation.isChecked($(this))){
                $(this).parents('.form-item').find('small.errorOnce').show();
            }
        });
        numbers.each(function (){
            if(!Validation.isNumber($(this).val())){
                $(this).siblings('small.errorNum').show();
            }
        });
        counts.each(function (){
            if(!Validation.countChars($(this).val(), $(this).data('count'))){
                $(this).siblings('small.errorChar').show();
            }
        });
    });
    
    required.on('keyup blur', function (){
        if(!Validation.isRequire($(this).val())){
            $(this).siblings('small.errorReq').hide();
        }
    });
    emails.on('keyup blur', function (){
        if(Validation.isEmail($(this).val())){
            $(this).siblings('small.errorEmail').hide();
        }
    });
    once.on('change', function (){
        $.each(groups, function (i){
            if(Validation.isChecked(groups[i])){
                groups[i].parents('.form-item').find('small.errorOnce').hide();
            }
        });
    });
    numbers.on('keyup blur', function (){
        if(Validation.isNumber($(this).val())){
            $(this).siblings('small.errorNum').hide();
        }
    });
    counts.on('keyup blur', function (){
         if(Validation.countChars($(this).val(), $(this).data('count'))){
            $(this).siblings('small.errorChar').hide();
        }
    });
    
});
</script>
</body>
</html>