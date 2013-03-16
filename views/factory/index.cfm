<cfoutput>
<cfif rc.event eq "factory.loadFile">
	#rc.error#
	#rc.loadMessage# <br />
	#rc.formatMessage# <br />
	<hr />	
</cfif>
</cfoutput>

<a href="index.cfm?event=factory.loadFile&fileType=bin&fileContent=">Load Binary File</a> <br />
<a href="index.cfm?event=factory.loadFile&fileType=csv&fileContent=">Load CSV File</a> <br />
<a href="index.cfm?event=factory.loadFile&fileType=xml&fileContent=">Load XML File</a> <br />