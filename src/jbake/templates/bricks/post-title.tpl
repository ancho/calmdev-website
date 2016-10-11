div(class:'row'){
    div(class:"small-10 medium-11 large-11 columns") {
        h2{
            a(href:"${config.site_contextPath}${post.uri}","${post.title}")
        }
    }
    div(class:"small-2 medium-1 large-1 columns") {
        if (post.language) {
            i(class:"fi-flag", 'aria-hidden':"true"){}
            yieldUnescaped post.language
        }
    }
}
