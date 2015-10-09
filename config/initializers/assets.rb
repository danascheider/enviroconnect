# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( 
  application.js 
  bootstrap_and_overrides.css 
  bootstrap.min.js
  html5shiv.js 
  jquery-1.11.3.min.js 
  jquery_bxslider.css 
  jquery.bxslider.min.js 
  jquery.nav.js 
  jquery.scrollTo.js
  lightbox.css 
  lightbox-2.6.js 
  respond.js 
  responsive.css 
  search.js
  style.css
  styleGreen.css
  styleOrange.css
  tabs.js
  )