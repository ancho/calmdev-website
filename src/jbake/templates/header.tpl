meta(name:"viewport", content:"width=device-width, initial-scale=1.0") newLine()
title("${config.title?:config.blog_title}") newLine()
meta('http-equiv':"Content-Type", content:"text/html; charset=utf-8") newLine()
meta(name:"description", content:"${content.description?.join(',')?:config.blog_description?.join(',')}") newLine()

if (content.tags) {
    meta(name:"keywords", content:"${content.tags.join(',')?:''}") newLine()
}

meta(name:"generator", content:"JBake") newLine()

if (content.description) {
    include template: 'bricks/twitter-card.tpl'
}

link(rel:"stylesheet", href:"${config.site_contextPath}css/asciidoctor.css") newLine()
link(rel:"stylesheet", href:"${config.site_contextPath}vendor/foundation-sites/dist/foundation.min.css") newLine()
link(rel:"stylesheet", href:"${config.site_contextPath}vendor/foundation-icon-fonts/foundation-icons.css") newLine()
link(rel:"stylesheet", href:"${config.site_contextPath}vendor/highlightjs/darcula.css") newLine()
link(rel:"stylesheet", href:"${config.site_contextPath}css/app.css") newLine()
