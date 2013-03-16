<cfoutput>
<cfif rc.event eq "observer.activateSubject">
	#rc.notifyMessage# <br />
	#rc.accountingMessage# <br />
	#rc.UIMessage# <br />
	<hr />	
</cfif>
</cfoutput>

<a href="index.cfm?event=observer.activateSubject">Activate the Observer</a> <br />
