div(class:"row"){
    div(class:"small-12 middle-12 large-12 columns"){
        article(class:"wrap"){
            header{
                div(class:"row"){
                    div(class:"small-3 medium-1 large-1 columns"){
                        include template: 'bricks/date.tpl'
                    }

                    div(class:"small-9 medium-11 large-11 columns"){
                        include template: 'bricks/post-title.tpl'
                    }
                }
                div(class:'row') {
                    div(class:"small-offset-3 medium-offset-1 large-offset-1 columns") {
                        model.put('tagList',post.tags)
                        include template: 'bricks/tags.tpl'
                    }
                }
                hr()
            }

            div(class:"row"){
                div(class:"columns"){
                    yieldUnescaped post.body
                }
            }
        }
    }
}
