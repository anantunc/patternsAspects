<!--- observer.cfc --->
<cfcomponent>

	<cffunction name="init" access="public" returntype="observer" output="false">
		<cfscript>
			observer = structNew();
			observer.notify = createObject("component","model/observer/NotifyService");
			observer.accounting = createObject("component","model/observer/AccountingService");
			observer.display = createObject("component","model/observer/DisplayService");
			return this;
		</cfscript>  
	</cffunction>

	<cffunction name="index" returntype="void" output="false" hint="My main event">
		<cfargument name="event" required="true">		
		<cfset event.setView('observer/index')>
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