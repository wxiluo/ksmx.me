<div id="sidebar" class="grid_4 omega">

    <aside class="widget">
        <!-- Non working search -->
        <form action="">
            <input type="search" results="10" placeholder="Search..." />
            <input type="submit" value="Search..." />
        </form>
    </aside> <!-- end widget -->

    <aside class="widget">
        <h3>Top Tags</h3>
        <div id="tags">
        % for tag, count in bf.config.blog.top_tags:
        <a href="${bf.util.site_path_helper(bf.config.blog.path,bf.config.blog.tag_dir,tag.slug)}" class="tag${tag.score}" title="${tag.count} posts">${tag.name}</a>
        % endfor
        </div>
    </aside> <!-- end widget -->
    
    <aside class="widget">
        <h3>Recent posts</h3>
        <ul>
            % for post in bf.config.blog.posts[:5]:
                <li><a href="${post.path}">${post.title.replace("'", "\\'")}</a></li>
            % endfor
        </ul>
        <p>
        <a class="feed" href="${bf.util.site_path_helper(bf.config.blog.path,'feed/index.xml')}">Subscribe to posts</a>
        % if bf.config.blog.disqus.enabled:
        <br/><a class="feed" href="http://${bf.config.blog.disqus.name}.disqus.com/latest.rss">Subscribe to comments</a>
        % endif
        </p>
    </aside>
    
    <aside class="widget">
        <h3>Archives</h3>
          <p>
          <select onchange="location=this.options[this.selectedIndex].value;">
            <option disabled="disabled">Choose a month</option>
          % for link, name, num_posts in bf.config.blog.archive_links:
            <option value="${bf.util.site_path_helper(bf.config.blog.path,link)}/1">${name}&nbsp;(${num_posts})</option>
          % endfor
          </select>
          </p>
      </aside> <!-- end widget -->

</div> <!-- end sidebar -->