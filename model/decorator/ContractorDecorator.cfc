<!--- ContractorDecorator.cfc --->
<cfcomponent extends="ParentDecorator" implements="RenderInterface">

	<cffunction name="getInformation" returntype="string">
  		<cfscript>
  			var message = "";
			message = super.getInformation() & " | More contractor information <br>";
  			//Do More stuff
  			return(message);
		</cfscript>
	</cffunction>

	<cffunction name="renderLayout" returntype="string">
  		<cfscript>
  			var message = "";
			message = super.renderLayout() & " | Extra contractor layout<br>";
  			//Do More stuff
  			return(message);
  		</cfscript>
	</cffunction>

</cfcomponent>   