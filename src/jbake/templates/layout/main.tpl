yieldUnescaped '<!DOCTYPE html>'
html{

    head {
        include template: "header.tpl"
    }

    body(class:"antialiased") {

        include template: 'menu.tpl'

        yieldUnescaped '<main>'
        bodyContents()
        yieldUnescaped '</main>'

        newLine()
        include template: 'footer.tpl'

        script(type:"text/javascript", src:"${config.site_contextPath}vendor/jquery/jquery.js"){}
        newLine()
        script(type:"text/javascript", src:"${config.site_contextPath}vendor/foundation-sites/dist/foundation.js"){}
        newLine()
        script(type:"text/javascript", src:"${config.site_contextPath}vendor/what-input/what-input.js"){}
        newLine()
        script(type:"text/javascript", src:"${config.site_contextPath}vendor/highlightjs/highlight.pack.min.js"){}
        newLine()
        script(type:"text/javascript", src:"${config.site_contextPath}js/app.js"){}
        newLine()
        script {
            yieldUnescaped "\$(document).foundation();"
            newLine()
            yieldUnescaped "hljs.initHighlightingOnLoad();"
        }
        newLine()
    }
}
newLine()
