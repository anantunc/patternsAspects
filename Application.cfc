<cfcomponent extends="coldbox.system.Coldbox" output="false">
	<cfsetting enablecfoutputonly="yes">
	<cfprocessingdirective suppressWhitespace="true">

	<!--- Start the application --->
	<cfset appName = 'patternsAspects'> 
	<!---
	<cfset server.configuration = createObject('component', 'common.model.configuration.configurationService').init(datasource="config")>
	--->

	<cfset this.name = appname> 
	<cfset this.sessionManagement = true>
	<cfset this.sessionTimeout = createTimeSpan(0,24,0,0)>
	<cfset this.setClientCookies = true>
	
	<cfset COLDBOX_APP_ROOT_PATH = getDirectoryFromPath(getCurrentTemplatePath())>
	<cfset COLDBOX_APP_MAPPING   = ''>
	
	<cffunction name="onApplicationStart" returntype="boolean" output="false">
		<cfscript>
			application.appName = appName;
			loadColdBox();
			return true;
		</cfscript>
	</cffunction>

	<cffunction name="onRequestStart" returntype="boolean" output="false">
		<cfargument name="targetPage" type="string" required="true">

		<!--- this line makes sure that non-coldbox files and directories are not run thru the framework.. --->
		<cfif listgetat(cgi.script_name, 2, '/') eq 'index.cfm'
			and listgetat(cgi.script_name, 2, '/') does not contain '.cfc'>
			<cfset reloadChecks()>
		</cfif>
			
		<cfreturn true>
	</cffunction>

	<cffunction name="onRequest" returntype="void">
		<cfargument name="targetPage" type="string" required="true">	
        
		<cfparam name="Request.errors" default="#arrayNew(1)#">    
		<!--- COLDBOX --->
		<cfif findNoCase('index.cfm', listLast(arguments.targetPage, '/'))>
			<cfset processColdBoxRequest()>
		</cfif>
	</cffunction>

	</cfprocessingdirective>
</cfcomponent>