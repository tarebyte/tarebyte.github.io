set :meta, {
  title: 'Welcome Back',
  url:   'http://tarebyte.github.io'
}

activate :syntax
activate :syntax, :line_numbers => true

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

set :syntax_theme, Rouge::Themes::Base16

# Asset Directories
set :css_dir,      'assets/stylesheets'
set :js_dir,       'assets/javascripts'
set :images_dir,   'assets/images'
set :font_fir,     'assets/fonts'
set :partials_dir, 'partials'

after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end

activate :blog do |blog|
  blog.prefix            = 'blog'
  blog.permalink         = '{year}/title.html'
  blog.taglink           = 'tags/{tag}.html'
  blog.default_extension = ".md"

  blog.paginate = true
  blog.per_page = 10
end

configure :build do
  activate :relative_assets
  activate :directory_indexes
  activate :asset_hash

  activate :minify_html, remove_input_attributes: false
  activate :minify_css
  activate :minify_javascript
  # activate :imageoptim
  # activate :gzip, exts: %w(.js .css .html .html .svg .ttf .otf .woff .eot)
end

# Deploy build to master branch
activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = "master"
end
