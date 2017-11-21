<!--- Please insert your code here --->
<cfscript>
	if(isDefined("form.submit")) {
		if(not isDefined("Application.comments")) {
			Application.comments = arraynew(1);
		}
		Application.comments.append(form.comment);
	}
	
	if(isDefined("Application.comments")) {
		for(i =1; i <= arraylen(Application.comments); i++) {
			writeoutput("Comment : <br>");
			writeoutput(encodeforhtml(Application.comments[i]));
			writeoutput("<hr/>");
		}
	} else {
		writeoutput("No Comments <br/><hr/>");
	}
</cfscript>
<br/> Post a comment:
<form method = "post" enctype="application/x-www-form-urlencoded" >
	<textarea cols="100" rows="25" name="comment">		
	</textarea>
	<input type="submit" value="submit" name="submit">
</form>