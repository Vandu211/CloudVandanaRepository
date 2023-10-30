<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script>
	function myfun()
	{
		var name=document.myform.name.value;
		var mail=document.myform.email.value;
		var a=document.myform.Mobile.value;
	   
		var Feedback=document.myform.feedback.value;
		
		
		//validation for name of the customer
		if(name=="")
		{
		document.getElementById("nameerror").innerHTML="** Name is mandotory";
		return false;
		}
		
		//validation for email id
		if(mail=="")
		{
		document.getElementById("error").innerHTML="** Enter the email address"
		return false;
		}
		
		//validation for radio button
		if(document.getElementById('Yes').checked==false && document.getElementById('No').checked==false)
	    {
			
				document.getElementById("radio1error").innerHTML="**Please Select the Option";
				return false;
				
		}
		//validation for mobile Number
		 if(a.length<10 || a.length>10)
		  {
		  document.getElementById("Message").innerHTML="** Number Should be 10 Digit ";
				 return false;
		  }
	    if((a.charAt(0)!=9) && (a.charAt(0)!=8) && (a.charAt(0)!=7))
		{
		    document.getElementById("Message").innerHTML="** Invalid Number "
			 return false;
		 }
	    
	    if(document.getElementById('satisfied').checked==false && document.getElementById('Unsatisfied').checked==false && document.getElementById("undecided").checked==false)
	    {
			
				document.getElementById("radio3error").innerHTML="**Please Select the Option";
				return false;
				
		}
	    
	    if(Feedback=="")
		{
		document.getElementById("feederror").innerHTML="** please give your feedback";
		return false;
		}
}
	
	function ClearFields()
	{
		document.getElementById("name").value="";
		document.getElementById("email").value="";
		document.getElementById("Yes").value=null;
		document.getElementById("No").value=null;
		document.getElementById("Mobile").value="";
		document.getElementById("satisfied").value=null;
		document.getElementById("Unsatisfied").value=null;
		document.getElementById("Undecided").value=null;
		document.getElementById("feedback").value="";

	}
	s
	
	
</script>
</head>
<body style="background-color: skyblue;">
    <center>
 <h1>Customer Survey Form</h1>
	<form name="myform" onClick="return myfun()">
	
		<Label id="lable">Enter Full Name</Label><br>
        <input type="Text" name="name" id="name"/><br>
         <span style="color:red" id="nameerror"></span><br><br>
		
		<Label id="lable">Enter the Email Id</Label><br>
        <input type="email" name="email" id="email"/><br>
        <span style="color:red" id="error"></span><br><br>
		
		<label> this first time you are using our products and service</label><br>
		
		<input type="radio" id="Yes" value="Yes" name="option"/>
		<label for="Yes">Yes</label>
	    <input type="radio" id="No" value="No" name="option"/>
		<label for="No">No</label><br>
		<span style="color:red" id="radio1error"></span><br><br>
		
		<Label id="lable">Enter the Mobile Number</Label><br>
        <input type="number" id="Mobile" value=" " name="Mobile"/><br>
        <span style="color:red" id="Message"> </span><br><br>
		
		<label>How satisfied are you with our compony</label><br>
		<input type="radio" id="satisfied" name="satisfaction" value="satisfy"/>
		<label for="satisfied">Satisfied</label><br>
		<input type="radio" id="Unsatisfied" name="satisfaction" value="Unsatisfy"/>
		<label for="Unsatisfied">Unsatisfied</label><br>
		<input type="radio" id="Undecided" name="satisfaction" value="Undecided"/>
		<label for="Undecided">Undecided</label><br>
		<span style="color:red" id="radio3error"></span><br><br>
		
		<label>Do you have any suggestion to improve our services</label><br>
		<input type="text" style="width: 500px; height: 100px;" id="feedback"><br>
		<span style="color:red" id="feederror"></span><br><br>
		
		<input type="submit" value="Submit"/>
		<button type="button" onClick="ClearFields()">Reset</button>
		</form>
</center>

</body>
</html>