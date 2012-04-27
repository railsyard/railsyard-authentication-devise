require "active_support/core_ext/object/try"

module ActionDispatch::Routing
  class Mapper

    def railsyard_authentication_devise_for( resource )
      devise_for resource,
                 :controllers => { :sessions => "railsyard_authentication_devise/sessions" },
                 :path_prefix => 'backend'
    end

  end
end
