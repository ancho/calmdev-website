span(class:'label'){
    a(href:"${config.site_contextPath}tags/${tagValue.replace(' ','-')}.html","${tagValue}")
    if ( badge ) {
        def postsCount = posts.findAll { post ->
            post.status == "published" &&
                    post.tags.contains(tagValue)
        }.size()

        newLine()
        span(class:"secondary badge","${postsCount}")
        newLine()
    }
}
