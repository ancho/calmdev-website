
<div class="row">
<div class="small-12 text-center">
        <p class="muted credit"> 2014 - ${new Date().format("yyyy")} | Mixed with <a href="http://foundation.zurb.com/">Foundation v${config.foundation_version}</a> | Baked with <a href="http://jbake.org">JBake ${version}</a></p>
</div>
</div>

<script type="text/javascript" src="${config.site_contextPath}vendor/jquery/jquery.js"></script>
<script type="text/javascript" src="${config.site_contextPath}vendor/foundation-sites/dist/foundation.js"></script>
<script type="text/javascript" src="${config.site_contextPath}vendor/foundation-sites/dist/plugins/foundation.sticky.js"></script>
<script type="text/javascript" src="${config.site_contextPath}vendor/what-input/what-input.js"></script>
<script type="text/javascript" src="${config.site_contextPath}vendor/highlightjs/highlight.pack.min.js"></script>
<script type="text/javascript" src="${config.site_contextPath}js/app.js"></script>

<script>
    \$(document).foundation();
    hljs.initHighlightingOnLoad();
</script>
</body>
</html>
