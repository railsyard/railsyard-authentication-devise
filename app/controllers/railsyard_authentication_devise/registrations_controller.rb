class RailsyardAuthenticationDevise::RegistrationsController < Devise::RegistrationsController
  layout "railsyard_authentication_devise/devise"

  skip_before_filter :require_no_authentication
end
