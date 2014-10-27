<% include "header.gsp" %>
<% include "menu.gsp" %>
<main>
    <div class="row">
        <div class="small-12 columns">
            <h1> Blog </h1>
            <hr/>
        </div>
    </div>

    <% published_posts.each { post -> %>
    <div class="row">
        <div class="small-12 columns">
            <article class="panel radius">
                <header>
                    <h3>${post.title} <small><time datetime="${post.date.format("yyyy-MM-dd")}">${post.date.format("dd.MM.yyyy")}</time></small></h3>

                    <p>
                        <span><a href="#" class="label">blog</a></span>
                        <span><a href="#" class="label">asciidoc</a></span>
                    </p>

                </header>
                <hr/>
                ${post.body}
            </article>
        </div>
    </div>
    <% } %>
</main>
<% include "footer.gsp" %>