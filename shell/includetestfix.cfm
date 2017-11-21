<cfscript>
expandedPath = expandpath(url.a);
pathLimit = getDirectoryFromPath(getCurrentTemplatePath());
if(left(expandedPath, len(pathLimit)) eq pathLimit && expandedPath.endsWith(".cfm")) {
	include expandedPath;
}
else {
	 writeoutput("Error. Please contact Site Admin.");
	}
</cfscript><br/>
<cfoutput>#url.a#</cfoutput><br/>
<cfoutput>#expandpath(url.a)#</cfoutput>