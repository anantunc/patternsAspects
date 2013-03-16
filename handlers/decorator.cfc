<!--- decorator.cfc --->
<cfcomponent>

	<cffunction name="preHandler" access="public" returntype="void" output="false">
		<cfargument name="Event" type="any">

	</cffunction>

	<!--- Default Action --->
	<cffunction name="index" returntype="void" output="false" hint="My main event">
		<cfargument name="event" required="true">		
		<cfscript>
			if(not isDefined("rc.personnelType")) rc.personnelType = "";
			if(rc.personnelType eq "permanent")
				rc.decorate = createObject("component","model/decorator/PermanentDecorator");
			else if(rc.personnelType eq "contractor")
				rc.decorate = createObject("component","model/decorator/ContractorDecorator");
			else 
				rc.decorate = createObject("component","model/decorator/ParentDecorator");
		
			rc.infoMessage = rc.decorate.getInformation();
			rc.layoutMessage = rc.decorate.renderLayout();
			event.setView('decorator/index');
		</cfscript>
	</cffunction>
	
</cfcomponent>