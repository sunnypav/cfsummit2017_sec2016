<cfscript>
loginQuery.setSQL("SELECT UserID, Roles FROM LoginInfo WHERE UserID = :userid AND Password = :password");
loginQuery.addParam(name="userid",value=cflogin.name,CFSQLTYPE="CF_SQL_VARCHAR");
loginQuery.addParam(name="password",value=cflogin.password,CFSQLTYPE="CF_SQL_VARCHAR");
</cfscript>