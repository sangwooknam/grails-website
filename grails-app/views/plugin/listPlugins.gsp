<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>Grails Plugins by Tag</title>
    <meta content="subpage" name="layout"/>
    <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'plugins.css')}" />
</head>
<body>
<div id="contentPane">
    <ul id="infoLinks">
        <li class="home">
            <g:link controller="plugin" action="index">Plugins Home</g:link>
        </li>
        <li class="create">
            <g:link controller="plugin" action="createPlugin">Create Plugin Page</g:link>
        </li>
        <li class="cloud">
            <g:link controller="tag" action="cloud">Tag Cloud</g:link>
        </li>
    </ul>

    <h1>Plugin By Tag</h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    
    <g:each var='tagMap' in="${pluginMap}">
        <a id="${(tagMap.key + ' tags').encodeAsURL()}"><h2>${tagMap.key}</h2></a>
        <ul>
            <g:each var='plugin' in="${tagMap.value}">
                <li>
                    <g:if test="${plugin.name.startsWith('fix-this-')}">
                        <g:link action="show" params="${[name:plugin.name]}">${plugin.title}</g:link> (RENAME ME!)
                    </g:if>
                    <g:else>
                        <g:link action="show" params="${[name:plugin.name]}">${plugin.title}</g:link>
                    </g:else>
                </li>
            </g:each>
        </ul>
    </g:each>

</div>
</body>
</html>
