<!--- Please insert your code here --->
<cfscript>
	currentuser = getAuthUser();
	if(isDefined("currentuser") && isdefined("url.switch") && isdefined("url.token")) {
		validation = csrfverifytoken(url.token);
		if(validation) {
			session["ispublic"] = BooleanFormat(url.switch);
			writeoutput("<br/> Updated your privacy<br/>");		
			include "securitytest.cfm";
			} else
			include "loginform.cfm";
	} else {
		include "loginform.cfm";
	}
</cfscript>


