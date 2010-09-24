<html>
<head>
<g:set var="output">
<!-- icon tests -->
<r:resourceLink uri="/images/favicon.ico"/>
<r:resourceLink uri="/images/springsource.png" type="appleicon"/>

<!-- Here we pull in our smart links, and capture them just for sake of demo page output -->
<r:dependsOn module="jquery-ui"/>
<r:dependsOn module="app"/>
<!-- This tests resource duplication detection for explicit resourceLink -->
<r:resourceLink dir="css" file="main.css"/>
<!-- This tests resource tag enhancement for legacy usage -->
<r:resourceLink dir="css" file="legacy.css"/>
<!-- This tests ad hoc resource deferral -->
<r:resourceLink dir="js" file="core.js"/>
<r:layoutResources/>
</g:set>

    ${output}
</head>
<body>
    <h1>This is the resource test page</h1>
    <p>It produced the following output in the head section</p>
    <pre>
        ${output.encodeAsHTML()}
    </pre>
    <p>Grails logo using processing:<r:img uri="/images/grails_logo.png"/></p>
    
    <p>Resource cache info:</p>
    <pre>${grailsApplication.mainContext.resourceService.dumpResources().encodeAsHTML()}</pre>

    <g:set var="deferred">
        <r:layoutResources/>
    </g:set>
    <p>It produced the following output in the footer</p>
    <pre>
        ${deferred.encodeAsHTML()}
    </pre>
    
    ${deferred}
</body>
</html>