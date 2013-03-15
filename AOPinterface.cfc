<cfinterface hint="Our AOP Method Interceptor Interface">

	<---  invokeMethod --->    
    <cffunction name="invokeMethod" output="false" access="public" returntype="any" hint="Invoke an AOP method invocation">    
    	<cfargument name="invocation" required="true" hint="The method invocation object: coldbox.system.ioc.aop.MethodInvocation">
    </cffunction>
	
</cfinterface>