<cfoutput>
<cfif isDefined("rc.activateSubject")>
	#rc.notifyMessage# <br />
	#rc.accountingMessage# <br />
	#rc.UIMessage# <br />
	<hr />	
</cfif>
</cfoutput>

<a href="index.cfm?event=observer&activateSubject=1">Activate the Observer</a> <br />

