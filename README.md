# Accessibility Camp Seattle

The website for the Seattle Accessibility Camp Event in 2019.

This Jekyll theme was based on Pixyll by [John Otander](http://johnotander.com)
([@4lpine](https://twitter.com/4lpine)) and modified by [Marcy Sutton](https://marcysutton.com).

## Getting Started

To check out this repository and build it on your machine:

```
$ git clone git@github.com:marcysutton/a11ycamp-jekyll.git
$ cd a11ycamp-jekyll
$ gem install bundler # If you don't have bundler installed
$ bundle install
```

#### Verify your Jekyll version

It's important to also check your version of Jekyll since this project uses Native Sass which
is [only supported by 2.0+](http://jekyllrb.com/news/2014/05/06/jekyll-turns-2-0-0/).

### Settings are in `_config.yml`

The `_config.yml` located in the root of the project directory contains all of the configuration details
for the A11y Camp site. The defaults are:

```yml
# Site settings
# Site settings
title:       Accessibility Camp&nbsp;Seattle
email:       info@accessibilitycampseattle.org
author:      Marcy Sutton
description: "A free, single-day unconference about accessibility and people, May 18, 2019 at Seattle Central College."
eventdate: Saturday, May 18 2019
eventlocation: Seattle Central College
eventlocationurl: https://goo.gl/maps/BUXi3jbxxuL2
baseurl:     ''
url:         http://accessibilitycampseattle.org
date_format: "%b %-d, %Y"

```

### Jekyll Serve

Then, start the Jekyll Server. I always like to give the `--watch` option so it updates the generated HTML when I make changes.

```
$ jekyll serve --watch
```

Now you can navigate to `localhost:4000` in your browser to see the site.

### Jekyll Build

To build the site for deployment:
```
$ jekyll build
```

### Using Github Pages

This site is hosted for free with Github Pages.
