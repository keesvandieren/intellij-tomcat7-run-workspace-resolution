<%@ page import="com.squins.ResourcePatchFetcher" %>
<%@ page import="com.squins.common.CommonClass" %>

<html>
<h1>Maven tomcat7:run and IntelliJ workspace resolution test</h1>


<h2>Show urlpath of classpath resources</h2>
<p>Shows resource uri to -common project. Path starting with 'jar:' indicates that workspace resolution doesn't function.</p>
<% out.println(ResourcePatchFetcher.fetchCommonResourceUri()); %>


<h2>Show contents of classpath resource</h2>
<p>Shows contents of file common-resource.txt.</p>

<p>File contents:</p>
<hr/>
<% out.println(ResourcePatchFetcher.fetchResourceContents()); %>
<hr/>


<h2>Shows return value of a class</h2>
<p>Below 'CommonClass' is called, from testproject-common. Change its return body, and restart the application (without mvn install) and see if it gets updated.</p>
<% out.println(CommonClass.returnSomething()); %>

<h2>Shows uri of Classfile from classpath</h2>
<p>Shows uri of 'CommonClass' on the classpath</p>
<% out.println(CommonClass.getClassResourceUri()); %>
</html>