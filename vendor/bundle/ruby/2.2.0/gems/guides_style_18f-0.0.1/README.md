## [`guides_style_18f`](https://rubygems.org/gems/guides_style_18f): 18F Guides style gem

Provides consistent style elements for [Jekyll](https://jekyllrb.com/)-based
web sites based on the
[18F Guides Template](https://pages.18f.gov/guides-template/).  The 18F Guides
theme is based on [DOCter](https://github.com/cfpb/docter/) from
[CFPB](http://cfpb.github.io/).

### Usage

In your [`Gemfile`](http://bundler.io/gemfile.html), include the following:

```ruby
group :jekyll_plugins do
  gem 'guides_style_18f'
end
```

Add an `assets/css/styles.scss` file that contains at least the following:

```scss
---
---

@import "guides_style_18f";
```

Then in your [`_config.yml` file](https://jekyllrb.com/docs/configuration/),
add the following (you may need to remove any `layout:`
[front matter](https://jekyllrb.com/docs/frontmatter/) from existing pages for
this to take effect):

```yaml
defaults:
  -
    scope:
      path: ""
    values:
      layout: "guides_style_18f_default"
```

Build the site per usual, and observe the results.

### Additional features

Here are some other features that can be enabled via `_config.yml`:

```yaml
# To use the shared 18F Guides Teamplate assets when deploying to
# pages.18f.gov, to avoid having to rebuild the site for minor style and
# script updates:
asset_root: /guides-template

# This adds the "back to" breadcrumb link under the page title:
back_link:
  url: "https://pages.18f.gov/guides/"
  text: Read more 18F Guides

# If you use Analytics, add your code here:
google_analytics_ua: UA-????????-??
```

### Additional scripts and styles

If you'd like to add additional scripts or styles to every page on the site,
you can add `styles:` and `scripts:` lists to `_config.yml`. To add them to a
particular page, add these lists to the page's front matter.

### Development

First, choose a Jekyll site you'd like to use to view the impact of your
updates and clone its repository; then clone this repository into the same
parent directory. For example, to use the 18F Guides Template:

```shell
$ git clone git@github.com:18F/guides-template.git
$ git clone git@github.com:18F/guides-style.git
```

In the `Gemfile` of the Jekyll site's repository, include the following:

```ruby
group :jekyll_plugins do
  gem 'guides_style_18f', :path => '../guides-style'
end
```

You can find the different style assets and templates within subdirectories of
the `assets` and `lib/guides_style_18f` directories of this repository. Edit
those, then rebuild the Jekyll site as usual to see the results.

### Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in [CONTRIBUTING](CONTRIBUTING.md):

> This project is in the public domain within the United States, and copyright and related rights in the work worldwide are waived through the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0
>dedication. By submitting a pull request, you are agreeing to comply
>with this waiver of copyright interest.
