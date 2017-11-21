<cfscript>
a = structnew();
a["sample"] = true;
a["lastname"] = "no";
a["firstname"] = "firstname";
a["value"] = "10.256";
writeoutput(serializejson(a));
</cfscript>
