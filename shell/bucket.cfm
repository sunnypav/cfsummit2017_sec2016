<!---<cfdirectory action="create" directory="s3://cfqa.pavanhmac444/" storelocation="ca-central-1" >
--->
<cfdirectory action="list" directory="s3://cfqa.testuploadwithslash/" name="res" />
<cfdump var="#res#" >

<cfset a = atn(10.99)>