<cfcomponent> 
<cfset This.name = "csrf"> 
<cfset This.Sessionmanagement="True"> 
<cfset This.loginstorage="session"> 

<cffunction name="OnRequestStart"> 
<cfargument name = "request" required="true"/> 
<cfif IsDefined("Form.logout")> 
<cflogout> 
</cfif> 

<cflogin> 
<cfif NOT IsDefined("cflogin")> 
<cfinclude template="loginform.cfm"> 
<cfabort> 
<cfelse> 
<cfif cflogin.name IS "" OR cflogin.password IS ""> 
<cfoutput> 
<h2>You must enter text in both the User Name
and Password fields. 
</h2> 
</cfoutput> 
<cfinclude template="loginform.cfm"> 
<cfabort> 
<cfelse> 
<cfscript>
loginQuery = new Query();
loginQuery.setSQL("SELECT UserID, Roles FROM LoginInfo WHERE UserID = '#cflogin.name#' AND Password = '#cflogin.password#'");
//loginQuery.setSQL("SELECT UserID, Roles FROM LoginInfo WHERE UserID = :userid AND Password = :password");
//loginQuery.addParam(name="userid",value=cflogin.name,CFSQLTYPE="CF_SQL_VARCHAR");
//loginQuery.addParam(name="password",value=cflogin.password,CFSQLTYPE="CF_SQL_VARCHAR");
loginQuery.setDataSource("cfdocexamples");
s = loginQuery.execute().getResult();
if(s.recordCount > 0) {
	cfloginuser(name= cflogin.name, Password = cflogin.password, roles = s.roles);	
} else {
	writeoutput("<H2>Your login information is not valid.<br> Please Try again</H2>");
	include "loginform.cfm";
	abort;
 }
</cfscript>
</cfif>	
</cfif> 
</cflogin> 

<cfif GetAuthUser() NEQ ""> 
<cfoutput> 
<form action="securitytest.cfm" method="Post"> 
<input type="submit" Name="Logout" value="Logout"> 
</form> 
</cfoutput> 
</cfif> 

</cffunction> 
</cfcomponent>