div(class:"row") {
    div(class:"small-12 large-12 middle-12 small-text-center large-text-center middle-text-center columns") {
        div(id:"title-box", class:"title-box") {
            div(class:"title-content") {
                h1("Calmdevelopment")
                p("Keep calm and code. Or do some other stuff.")
                p(class:"title-contact") {
                    a(href:"https://twitter.com/knarfancho", rel:"me"){
                        i(class:"fi-social-twitter"){}
                    }
                    a(href:"https://github.com/ancho", rel:"me"){
                        i(class:"fi-social-github"){}
                    }
                }
            }
        }
        nav(class:"topnav") {
            div(class:"top-bar") {
                div(class:"top-bar-title") {
                    div(class:"title-bar", 'data-responsive-toggle':"responsive-menu", 'data-hide-for':"medium") {
                        button(class:"menu-icon", type:"button", 'data-toggle':""){}
                        div(class:"title-bar-title"){
                            yield "Menu"
                        }
                    }
                }
                div(id:"responsive-menu") {
                    div(class:"top-bar-left") {
                        ul(class:"menu", 'data-dropdown-menu':"") {
                            li {
                                a(href:"${config.site_contextPath}index.html")
                                {
                                    i(class:"fi-home"){}
                                    yield "Home"
                                }
                            }
                            li {
                                a(href:"${config.site_contextPath}${config.archive_file}") {
                                    i(class:"fi-archive"){}
                                    yield "Archive"
                                }
                            }
                            li {
                                a(href:"${config.site_contextPath}impressum.html") {
                                    yield "Impressum"
                                }
                            }

                        }
                    }
                    div(class:"top-bar-right") {
                        ul(class:"menu", 'data-dropdown-menu':"") {
                            li {
                                a(href:"${config.site_contextPath}${config.feed_file}") {
                                    i(class:"fi-rss"){}
                                    yield "Subscribe"
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
