<!--- CSVFile.cfc --->
<cfcomponent implements="DisplayInterface">
	<cffunction name="load" returntype="string">
		<cfargument name="filename" type="String" required="true"/>
		<cfscript>
		  //do other stuff
		  return("Load successful from a CSV file");
		</cfscript>
	</cffunction>
	<cffunction name="formatConsistency" returntype="string">
		<cfscript>
		  //do other stuff
		  return("CSV file format changed");
		</cfscript>
	</cffunction>
</cfcomponent>    

