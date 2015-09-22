# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( search.js application.js jquery-1.11.3.min.js jquery.bxslider.min.js lightbox-2.6.js jquery.nav.js jquery.scrollTo.js html5shiv.js respond.js tabs.js jquery_bxslider.css lightbox.css responsive.css styleGreen.css styleOrange.css bootstrap_and_overrides.css style.css bootstrap.js )