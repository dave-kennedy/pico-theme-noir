# Noir Theme for Pico CMS

> Depending on your server, you might need to run the following commands with elevated permissions.

> In each of the following commands, replace DIR with the location of your themes directory, e.g.
> `/var/www/localhost/htdocs/pico/themes`.

> Skip ahead for instructions pertaining to the Nextcloud integration.

## Install

1. Run this command inside this directory:

       $ setup.sh install DIR

2. Change the theme in your `config.yml` to `noir`.

## Update

1. Run this command inside this directory:

       $ setup.sh install DIR

## Uninstall

1. Run this command inside this directory:

       $ setup.sh uninstall DIR

2. Change the theme in your `config.yml`.

## Blog support

If you want to add a list of blog posts to your page, use the `blog-index` template, e.g.:

    ---
    Title: Welcome
    Description: A list of blog posts by me.
    Author: Joe Bloggs
    Date: 2021-10-24
    Template: blog-index
    ---

Blog posts get their own template, and can have one or more `Tags`:

    ---
    Title: My First Post
    Description: This is my first blog post ever. Be nice.
    Author: Joe Bloggs
    Date: 2021-10-25
    Template: blog-post
    Tags:
        - Foo
        - Bar
    ---

## Configuration

Various aspects of the theme can be configured via a file named `_theme.md` in your content
directory. Here's a complete example with default values:

    ---
    blog:
        # The path to the blog index page
        index_id: blog/index

        # The number of posts to list per page on the blog index
        page_size: 10

        # The path to the blog posts directory
        posts_dir: blog/posts

        # Set to false to hide the author
        show_author: true

        # Set to false to hide the date
        show_date: true

        # Set to false to hide the tags
        show_tags: true

    header:
        # A list of links to display at the top of the page
        nav_links:
            Home: %base_url%/index
            Blog: %base_url%/blog
            Pico CMS: https://picocms.org

        # Set to false to hide the navigation
        show_nav: true

        # Set to false to hide the site title
        show_site_title: true

    footer:
        # The copyright holder's name
        copyright_holder: Joe Bloggs

        # Set to false to hide the copyright
        show_copyright: true
    ---

## Nextcloud

These instructions pertain only to the Nextcloud integration.

> In each of the following commands, replace DIR with the location of your themes directory, e.g.
> `/var/nextcloud/data/appdata_asdf1234/cms_pico/themes`.

### Install

1. Run this command inside this directory:

       $ sudo -u www-data setup.sh install DIR

2. In Nextcloud settings, go to Administration > Pico CMS and scroll down to the section labeled
   "Custom themes". Select "noir" from the dropdown menu and press the plus sign.

3. Still in Nextcloud settings, go to Personal > Pico CMS and select "noir" from the dropdown menu
   next to the name of your site.

### Update

1. Run this command inside this directory:

       $ sudo -u www-data setup.sh install DIR

2. In Nextcloud settings, go to Administration > Pico CMS and scroll down to the section labeled
   "Custom themes". Press the "Reload custom theme" button next to "noir".

### Uninstall

1. Run this command inside this directory:

       $ sudo -u www-data setup.sh uninstall DIR

2. In Nextcloud settings, go to Administration > Pico CMS and scroll down to the section labeled
   "Custom themes". Press the "Delete custom theme" button next to "noir".

3. Still in Nextcloud settings, go to Personal > Pico CMS and select another theme from the dropdown
   menu next to the name of your site.

