<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><% if (content.title) { print content.title } else { print config.blog_title }%></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="${content.description?:config.blog_description}" />
    <meta name="keywords" content="${content.tags?:''}" />
    <meta name="generator" content="JBake"/>
    
    <% if (content.type == "post" && content.description ) { include "twitter-card.gsp" }%>

    <link rel="stylesheet" href="${config.site_contextPath}css/asciidoctor.css" />
    <link rel="stylesheet" href="${config.site_contextPath}css/foundation.css" />
    <link rel="stylesheet" href="${config.site_contextPath}css/social_foundicons.css" />
    <link rel="stylesheet" href="${config.site_contextPath}vendor/google-code-prettify/prettify.css" />
    <link rel="stylesheet" href="${config.site_contextPath}css/desert.css" />
    <link rel="stylesheet" href="${config.site_contextPath}css/app.css" />

    <script src="${config.site_contextPath}js/vendor/modernizr.js"></script>
    <script src="${config.site_contextPath}js/app.js"></script>
</head>
<body class="antialiased" onload="prettyPrint();">
