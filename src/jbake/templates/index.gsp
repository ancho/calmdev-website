<% include "header.gsp" %>
<% include "menu.gsp" %>
<main>

    <% published_posts[0..4].each { post -> %>
    <div class="row">
        <div class="small-12 middle-12 large-12 columns">
            <article class="wrap">
                <header>
                    <div class="row">
                        <div class="small-3 medium-1 large-1 columns">
                            <div class="row termin">
                                <div class="month columns">${post.date?.format("MMM")}</div>

                                <div class="date columns">${post.date?.format("dd")}</div>

                                <div class="year columns">${post.date?.format("yyyy")}</div>
                            </div>
                        </div>

                        <div class="small-9 medium-11 large-11 columns">
                            <div class="row">
                                <div class="small-11 medium-11 large-11 columns">
                                    <h2><a href="${config.site_contextPath}${post.uri}">${post.title}</a></h2>
                                </div >

                                <div class="small-1 medium-1 large-1 columns">
                                    <% if (post.language) { %>
                                        <i class="fi-flag" aria-hidden="true" alt="language"></i> ${post.language}
                                    <% } %>

                                </div>
                            </div>
                            <div class="row">
                                <div class="columns">

                                    <p>
                                        <%
                                            def contextPath = "${config.site_contextPath}"
                                            post.tags.each { tag ->
                                            tag = tag.trim()
                                        %>
                                            <span class="label"><a href="${contextPath}tags/${tag.replace(' ','-')}.html">${tag}</a></span>
                                        <% } %>
                                    </p>
                                </div>
                            </div>

                        </div>

                    </div>
                </header>

                <div class="row">
                    <div class="columns">
                        ${post.body?:''}
                    </div>
                </div>

            </article>
        </div>
    </div>
    <% } %>
    <div class="row">
        <div class="small-12 columns">
            <hr/>
            Older post are available in the <a href="${config.site_contextPath}${config.archive_file}">archive</a>
        </div>
    </div>

</main>
<% include "footer.gsp" %>
