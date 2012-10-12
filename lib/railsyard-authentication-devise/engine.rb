module RailsyardAuthenticationDevise
  class Engine < ::Rails::Engine

    initializer "Railsyard precompile hook", :group => :all do |app|
      app.config.assets.precompile += [
        "railsyard_authentication_devise/authentication_box.css",
        "railsyard_authentication_devise/devise.css",
      ]
    end

    config.to_prepare do
      Railsyard::Backend.plugin_manager.add_plugin(:authentication_devise) do
        name "Railsyard Devise Authentication"
        backend_stylesheet_dependency "railsyard_authentication_devise/authentication_box"
        authentication_infos "railsyard_authentication_devise/authentication_box"
      end
    end

  end
end
