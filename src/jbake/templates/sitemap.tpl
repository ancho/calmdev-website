import java.text.SimpleDateFormat // <1>

xmlDeclaration()
urlset( xmlns:'http://www.sitemaps.org/schemas/sitemap/0.9'){
    published_content.each {content ->
        url {

            Date dateUpdated // <2>
            if ( content.updated ) { // <3>
                dateUpdated = new SimpleDateFormat(config.updated_format).parse(content.updated) // <4>
            }

    	    loc("${config.site_host}${config.site_contextPath}${content.uri}")
    	    lastmod("${dateUpdated?dateUpdated.format(config.sitemap_format):content.date.format(config.sitemap_format)}") // <5>
        }
    }
}
