<%page args="post"/>
<article class="post">

  <a name="${post.slug}"></a>
  <h2><a href="${post.permapath()}" rel="bookmark" title="Permanent Link to ${post.title}">${post.title}</a></h2>
  
  <a href="${post.path}"><img src="/images/thumbnail.jpg" alt="" class="thumbnail alignleft" /></a>

    ${self.post_prose(post)}
    
    <div class="clear"></div>

</article> <!-- end .post -->

<%def name="post_prose(post)">
  ${post.content}
</%def>
