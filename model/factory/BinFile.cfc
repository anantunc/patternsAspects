<!--- BinFile.cfc --->
<cfcomponent implements="ImportInterface">
	<cffunction name="load" returntype="string">
		<cfargument name="filename" type="String" required="true"/>
		<cfscript>
		  //do other stuff
		  return("Load successful from a binary file");
		</cfscript>
	</cffunction>
	<cffunction name="formatConsistency" returntype="string">
		<cfscript>
		  //do other stuff
		  return("Binary file format changed");
		</cfscript>
	</cffunction>
</cfcomponent>    
