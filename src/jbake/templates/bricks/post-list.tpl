def last_month
postList.each {post ->
    if (last_month) {
       if (post.date.format("MMMM yyyy") != last_month) {
            yieldUnescaped "</ul>"
            h3("${post.date.format("MMMM yyyy")}")
            yieldUnescaped "<ul>"
        }
    }
    else {
        h3("${post.date.format("MMMM yyyy")}")
        yieldUnescaped "<ul>"
    }

    li{
        yield "${post.date.format("dd")} - "
        a(href:"${config.site_contextPath}${post.uri}","${post.title}")
    }
    last_month = post.date.format("MMMM yyyy")
}
yieldUnescaped "</ul>"
