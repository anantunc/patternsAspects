<cfcomponent output="false">

	<!--- Default Action --->
	<cffunction name="index" returntype="void" output="false" hint="My main event">
		<cfargument name="event" required="true">
		<cfset var rc = event.getCollection()>
		<cfset var prc = event.getCollection(private=true)>
		<cfset event.setView('index')>
	</cffunction>
	
</cfcomponent>