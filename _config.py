# -*- coding: utf-8 -*-

######################################################################
# This is your site's Blogofile configuration file.
# www.Blogofile.com
#
# This file doesn't list every possible setting, it relies on defaults
# set in the core blogofile _config.py. To see where the default
# configuration is on your system run 'blogofile info'
#
######################################################################

######################################################################
# Basic Settings
#  (almost all sites will want to configure these settings)
######################################################################
## site_url -- Your site's full URL
# Your "site" is the same thing as your _site directory.
#  If you're hosting a blogofile powered site as a subdirectory of a larger
#  non-blogofile site, then you would set the site_url to the full URL
#  including that subdirectory: "http://www.yoursite.com/path/to/blogofile-dir"
site.url = "http://ksmx.me"

#### Blog Settings ####
blog = controllers.blog

## blog_enabled -- Should the blog be enabled?
#  (You don't _have_ to use blogofile to build blogs)
blog.enabled = True

## blog_path -- Blog path.
#  This is the path of the blog relative to the site_url.
#  If your site_url is "http://www.yoursite.com/~ryan"
#  and you set blog_path to "/blog" your full blog URL would be
#  "http://www.yoursite.com/~ryan/blog"
#  Leave blank "" to set to the root of site_url
blog.path = "/blog"

## blog_name -- Your Blog's name.
# This is used repeatedly in default blog templates
blog.name = "Michael's Blog"

## blog_description -- A short one line description of the blog
# used in the RSS/Atom feeds.
blog.description = "Michael's Blog"

## blog_timezone -- the timezone that you normally write your blog posts from
blog.timezone = "Asia/Chongqing"

## This is the number of blog posts you want to display per page
blog.posts_per_page = 5

## This turns on automatic permalink generation. If your post does not include a permalink field, then this allows for the automatic generation of the permalink
blog.auto_permalink.enabled = True

blog.auto_permalink.path = ":blog_path/:year/:month/:day/:title"

## Turns on/off Disqus comment system integration
blog.disqus.enabled = True

blog.disqus.name = "wxiluo"

## This is a dictionary of file extensions to default filter chains (see Filters) to be applied to blog posts. A default filter chain is applied to a blog post only if no filter attribute is specified in the blog post YAML header.

blog.post_default_filters = {
    "markdown": "syntax_highlight, markdown",
    "textile": "syntax_highlight, textile",
    "org": "syntax_highlight, org",
    "rst": "syntax_highlight, rst",
    "html": "syntax_highlight"
}


## This is for tag feature from gbishop
blog.tag_bins = 5
blog.top_tags_count = 10
blog.tag_dir = 'tag'