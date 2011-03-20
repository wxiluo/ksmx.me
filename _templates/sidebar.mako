<div id="sidebar" class="grid_4 omega">

    <aside class="widget">
        <!-- Non working search -->
        <form action="">
            <input type="search" results="10" placeholder="这货不能搜" />
            <input type="submit" value="别点我" />
        </form>
    </aside> <!-- end widget -->
    
    <aside class="widget">
        <h3>订了这货</h3>
        <p>
        <a class="feed" href="${bf.util.site_path_helper(bf.config.blog.path,'feed/index.xml')}">订阅这些没人要求保养的文章</a>
        % if bf.config.blog.disqus.enabled:
        <br/><a class="feed" href="http://${bf.config.blog.disqus.name}.disqus.com/latest.rss">赠品：雀巢</a>
        % endif
        </p>
    </aside>

    <aside class="widget">
        <h3>最近的那几坨</h3>
        <ul>
            % for post in bf.config.blog.posts[:5]:
                <li><a href="${post.path}">${post.title.replace("'", "\\'")}</a></li>
            % endfor
        </ul>
    </aside>

    <aside class="widget">
        <h3>插了标签的</h3>
        <div id="tags">
        % for tag, count in bf.config.blog.top_tags:
        <a href="${bf.util.site_path_helper(bf.config.blog.path,bf.config.blog.tag_dir,tag.slug)}" class="tag${tag.score}" title="${tag.count} posts">${tag.name}</a>
        % endfor
        </div>
    </aside> <!-- end widget -->
    
    <aside class="widget">
        <h3>每个月都有那么几篇</h3>
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
