<cfcomponent output="false">

	<cffunction name="onApplicationStart" returntype="void" output="false" hint="I am the coldbox onAppStart, I setup a 
		bunch of things">
		<cfargument name="event" required="true">

	</cffunction>
	
	<cffunction name="onRequestStart" returntype="void" output="false" hint="I am the coldbox onRequestStart. I scan the RC scope 
		for SQL / XSS violations">
		<cfargument name="event" required="true">

	</cffunction>

	<cffunction name="onException" returntype="void" output="false" hint="I am the coldbox exception handler, in cf8, 
		I simply fire off an email, in cf9, I log it via HOTH">
		<cfargument name="event" required="true">

	</cffunction>

</cfcomponent>