<cfscript>
	cfhttp(url="localhost:8500/rest/bookservice/books", method = "get",result="res"){
		cfhttpparam(type = "Header", name = "Accept", value = "application/json");
	}
	writedump(res.filecontent);
</cfscript>