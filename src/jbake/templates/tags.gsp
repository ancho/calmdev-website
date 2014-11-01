<% include "header.gsp" %>
<% include "menu.gsp" %>


<div class="row">
    <div class="small-12 columns">
        <h1>Taglist</h1>

        <div>
            <% alltags.sort().each { tag ->
                tag = tag.trim()
                def postsCount = posts.findAll { post ->
                    post.tags.contains(tag)
                }.size()
            %>
            <span><a href="/tags/${tag.replace(' ', '-')}.html" class="label">${tag} <span class="badge">${postsCount}</span></a></span>
            <% } %>
        </div>
    </div>
</div>
<main>
    <div class="row">

        <div class="small-12 columns">
            <h2>${tag}</h2>
            <hr/>
            <!--<ul>-->
            <% def last_month = null; %>
            <% tag_posts.each { post -> %>
            <% if (last_month) { %>
            <% if (post.date.format("MMMM yyyy") != last_month) { %>
        </ul>
            <h4>${post.date.format("MMMM yyyy")}</h4>
            <ul>
                <% } %>
                <% } else { %>
                <h4>${post.date.format("MMMM yyyy")}</h4>
                <ul>
                    <% } %>

                    <li>${post.date.format("dd")} - <a href="/${post.uri}">${post.title}</a></li>
                    <% last_month = post.date.format("MMMM yyyy") %>
                    <% } %>
                </ul>

        </div>
    </div>

</main>
<% include "footer.gsp" %>