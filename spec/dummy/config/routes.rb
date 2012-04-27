Dummy::Application.routes.draw do
  root :to => "static#index"
  devise_for :users, :controllers => { :sessions => "railsyard_authentication_devise/sessions" }
end
