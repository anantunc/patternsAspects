<!--- Decorator.cfc --->
<cfcomponent implements="RenderInterface">

	<cffunction name="getInformation" returntype="string">
  		<cfreturn "Basic information">
	</cffunction>

	<cffunction name="renderLayout" returntype="string">
  		<cfreturn "Basic layout">
	</cffunction>

</cfcomponent>   