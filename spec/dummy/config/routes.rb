Dummy::Application.routes.draw do
  root :to => "static#index"
  railsyard_authentication_devise_for :users
end
