<html>
<p>Shows resource uri to -common project. Path starting with 'jar:' indicates that workspace resolution doesn't function.</p>

<%@ page import="com.squins.ResourcePatchFetcher" %><% out.println(ResourcePatchFetcher.fetchCommonResourceUri()); %>

</html>