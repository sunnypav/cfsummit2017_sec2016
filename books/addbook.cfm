<cfscript>
	body = {
		"title" : "Lord of the Rings",
		"author": "J. R. R. Tolkien"
	};
	cfhttp(url="localhost:8500/rest/bookservice/books", method = "post",result="res"){
		cfhttpparam(type = "body",value = serializejson(body));
		cfhttpparam(type = "header", name = "Content-Type", value = "application/json");
	}
	writedump(res);
</cfscript>