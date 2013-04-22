# tarebyte.github.io

##Description

This is my personal static makes my life easier webpage.

##Development

###Technologies Used:

* Project Building and Deployment
  * [Middleman](https://github.com/middleman/middleman)
  * [Middleman Live Reload](https://github.com/middleman/middleman-livereload)
  * [Middleman GitHub Pages](https://github.com/neo/middleman-gh-pages)
* Templating and Styling
  * [HAML](http://haml.info/)
  * [SASS](http://sass-lang.com/)
  * [Normalize.css](http://necolas.github.io/normalize.css/)


##Getting Started

Make sure you install the projects current dependencies.

    bundle install

##Start Hacking

All you have to do in order to test the site is to run

    middleman server

LiveReload will take care of refreshing the page for you, it's super
slick.

##Deploying

This is meant to be deployed to GitHub Static Pages. Assuming that you
have set this up as a git repo and you have added your GitHub remote to it,
go ahead and run:

    rake publish

And that's it!
