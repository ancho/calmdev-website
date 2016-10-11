layout 'layout/main.tpl', true,
        projects: projects,
        bodyContents: contents {
            newLine()
            div(class:"row"){
                newLine()
                div(class:"small-12 columns"){
                    newLine()
                    div(class:"wrap"){
                        newLine()
                        div(class:"row"){
                            newLine()
                            div(class:"small-12 columns"){
                                newLine()
                                h2("Taglist")
                                newLine()
                                div{
                                    model.put('tagList', alltags.sort())
                                    model.put('badge', true)
                                    include template: 'bricks/tags.tpl'
                                }
                            }
                        }
                        div(class:"row"){

                            div(class:"small-12 columns"){
                                h2("${tag}")
                                hr()
                                model.put('postList', tag_posts)
                                include template: 'bricks/post-list.tpl'
                            }
                        }
                    }
                }
            }
        }
