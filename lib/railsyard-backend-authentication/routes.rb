require "active_support/core_ext/object/try"

module ActionDispatch::Routing
  class Mapper

    def railsyard_authentication_devise_for(resource)
      devise_for resource,
        controllers: {
          sessions:      "railsyard_authentication_devise/sessions",
          registrations: "railsyard_authentication_devise/registrations",
          passwords:     "railsyard_authentication_devise/passwords",
          unlocks:       "railsyard_authentication_devise/unlocks",
          confirmations: "railsyard_authentication_devise/confirmations",
        },
        path_prefix: 'backend'
    end

  end
end
