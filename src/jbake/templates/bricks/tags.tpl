div {
    tagList.each { tag ->
        tag = tag.trim()
        model.put('tagValue', tag)
        newLine()
        include template: 'bricks/tag.tpl'
        newLine()
    }
}
