<%page args="post"/>
<article class="post">

  <a name="${post.slug}"></a>
  <h2><a href="${post.permapath()}" rel="bookmark" title="Permanent Link to ${post.title}">${post.title}</a></h2>
  
  <a href="${post.path}"><img src="/images/thumbnail.jpg" alt="" class="thumbnail alignleft" /></a>

    ${self.post_prose(post)}
    
    <div class="clear"></div>
    
    <footer class="postmeta">
        <span class="btn alignleft">
<% 
   category_links = []
   for category in post.categories:
       if post.draft:
           #For drafts, we don't write to the category dirs, so just write the categories as text
           category_links.append(category.name)
       else:
           category_links.append("<a href='%s'>%s</a>" % (category.path, category.name))
%>
        	In ${", ".join(category_links)} by <a href="/about.html">Michael</a> on ${post.date.strftime("%B %d, %Y")}
		</span>
        <a href="${post.permapath()}" class="more-link alignright">Read more</a>
    </footer> <!-- end post meta -->

</article> <!-- end .post -->

<%def name="post_prose(post)">
  ${post.content}
</%def>
