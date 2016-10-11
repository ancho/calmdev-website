layout 'layout/main.tpl', true,
        bodyContents: contents {
            model.put('post', content)
            include template: 'bricks/post-brick.tpl'
        }
