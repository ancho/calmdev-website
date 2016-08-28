
<div class="row">
<div class="small-12 small-text-center">
        <p class="muted credit"> 2014 - ${new Date().format("yyyy")} | Mixed with <a href="http://foundation.zurb.com/">Foundation v${config.foundation_version}</a> | Baked with <a href="http://jbake.org">JBake ${version}</a></p>
</div>
</div>

<script type="text/javascript" src="${config.site_contextPath}js/vendor/jquery.js"></script>
<script type="text/javascript" src="${config.site_contextPath}js/foundation.min.js"></script>
<script type="text/javascript" src="${config.site_contextPath}vendor/google-code-prettify/prettify.js"></script>
<script>
    \$(document).foundation();
        \$(function() {
                      hljs.tabReplace = "  ";
                                  hljs.initHighlighting();
                                          });
</script>

</body>
</html>
