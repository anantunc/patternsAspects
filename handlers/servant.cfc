<!--- servant.cfc --->
<cfcomponent>

	<cffunction name="init" access="public" returntype="servant" output="false">
		<cfscript>
			return this;
		</cfscript>  
	</cffunction>

	<cffunction name="index" returntype="void" output="false" hint="My main event">
		<cfargument name="event" required="true">		
		<cfset event.setView('servant/index')>
	</cffunction>

	<cffunction name="postHandler" access="public" returntype="void" output="false">
		<cfargument name="Event" type="any">
		<cfscript>
			if(isDefined("rc.activateSubject")) {
				rc.notifyMessage = observer.notify.sendNotification();
				rc.accountingMessage = observer.accounting.updateAccountingSystem();
				rc.UIMessage = observer.display.updateUI();
			}
		</cfscript>
	</cffunction>
	
</cfcomponent>