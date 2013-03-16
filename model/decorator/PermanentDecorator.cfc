<!--- PermanentDecorator.cfc --->
<cfcomponent extends="ParentDecorator">

	<cffunction name="getInformation" returntype="string">
  		<cfscript>
  			var message = "";
			message = super.getInformation() & " | More permanent information <br>";
  			//Do More stuff
  			return(message);
		</cfscript>
	</cffunction>

	<cffunction name="renderLayout" returntype="string">
  		<cfscript>
  			var message = "";
			message = super.renderLayout() & " | Extra permanent layout<br>";
  			//Do More stuff
  			return(message);
  		</cfscript>
	</cffunction>

</cfcomponent>   