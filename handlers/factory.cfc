<!--- Factory.cfc --->
<cfcomponent>

	<cffunction name="preHandler" access="public" returntype="void" output="false">
		<cfargument name="Event" type="any">

	</cffunction>

	<!--- Default Action --->
	<cffunction name="index" returntype="void" output="false" hint="My main event">
		<cfargument name="event" required="true">		
		<cfset event.setView('factory/index')>
	</cffunction>

	<cffunction name="loadFile" access="public" returntype="void" output="false">
		<cfargument name="Event" type="any">
		<cfscript>
			rc.error = "";
			if (rc.fileType eq "csv")
				rc.factory = createObject("component","model/factory/CSVFile");
			else if (rc.fileType eq "xml")
				rc.factory = createObject("component","model/factory/XMLFile");
			else if (rc.fileType eq "bin")
				rc.factory = createObject("component","model/factory/BinFile");
			else {
				rc.error = "Invalid File <br>";
			} 
			rc.loadMessage = rc.factory.load(rc.fileContent);
			rc.formatMessage = rc.factory.formatConsistency();
			event.setView('factory/index');
		</cfscript>
	</cffunction>
	
</cfcomponent>