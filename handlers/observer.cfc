<!--- observer.cfc --->
<cfcomponent>

	<cffunction name="init" access="public" returntype="observer" output="false">
		<cfscript>
			observer.notify = createObject("component","model/observer/NotifyService");
			observer.accounting = createObject("component","model/observer/AccountingService");
			observer.display = createObject("component","model/observer/DisplayService");
			return this;
		</cfscript>  
	</cffunction>

	<cffunction name="preHandler" access="public" returntype="void" output="false">
		<cfargument name="Event" type="any">
	</cffunction>

	<!--- Default Action --->
	<cffunction name="index" returntype="void" output="false" hint="My main event">
		<cfargument name="event" required="true">		
		<cfset event.setView('observer/index')>
	</cffunction>

	<cffunction name="activateSubject" access="public" returntype="void" output="false">
		<cfargument name="Event" type="any">
		<cfscript>
			rc.notifyMessage = observer.notify.sendNotification();
			rc.accountingMessage = observer.accounting.updateAccountingSystem();
			rc.UIMessage = observer.display.updateUI();
			event.setView('observer/index');
		</cfscript>
	</cffunction>
	
</cfcomponent>