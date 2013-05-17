<cfcomponent>

	<cffunction name="preHandler" access="public" returntype="void" output="false">
		<cfargument name="Event" type="any">
		<cfscript>
			if(isDefined("rc.pattern")) {
				setNextEvent('#rc.pattern#');
			}
		</cfscript>
	</cffunction>

	<cffunction name="index" returntype="void" output="false" hint="My main event">
		<cfargument name="event" required="true">		
		<cfscript>
			event.setView('frontcontroller/index');
		</cfscript>
	</cffunction>

</cfcomponent>