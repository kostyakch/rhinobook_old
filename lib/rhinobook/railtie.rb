require "rhinobook/ability"

module Rhinobook
  class Railtie < Rails::Railtie

    VIEW_HELPERS_PATH = 'lib/rhinoart/view_helpers/'

    initializer "rhinobook_railtie.configure_rails_initialization" do |app|
      app.config.assets.precompile += %w( 
      	rhinobook/*.js 
        rhinobook/*.css
      	fancybox/*.css 
      	fancybox/*.js
      	jquery.remotipart.js
      )
    end

    initializer "rhinobook_railtie.configure_ability" do |app|
      ::Ability.send(:include, Rhinobook::Ability)
    end
  end
end

