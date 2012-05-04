module RailsyardAuthenticationDevise
  class Engine < ::Rails::Engine
    config.to_prepare do
      Railsyard::Backend.plugin_manager.add_plugin(:authentication_devise) do
        name "Railsyard Devise Authentication"
        backend_stylesheet_dependency "railsyard_authentication_devise/sidebar"
        authentication_infos "railsyard_authentication_devise/authentication_box"
      end
    end
  end
end
