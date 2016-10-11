layout 'layout/main.tpl', true,
        projects: projects,
        bodyContents: contents {

            div(class:"row"){
                div(class:"small-12 columns"){
                    section(class:"wrap"){
                        h2("Blog Archive")
                        model.put('postList', published_posts)
                        include template: 'bricks/post-list.tpl'
                    }
                }
            }
	    }
