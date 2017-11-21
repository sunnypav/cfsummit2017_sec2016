<cfif isDefined("form.submit") &&isdefined("form.myFile")>
<cffile action="upload" destination="#expandPath("./uploadDirectory")#" 
filefield="form.myFile">
<cfoutput>File uploaded successfully</cfoutput> 
</cfif>

<form method="post" enctype="multipart/form-data" >
	<input type="file" name="myFile">
		<input type="submit" value="submit" name="submit">
</form>