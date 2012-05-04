# Railsyard::Authentication::Devise

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'railsyard-authentication-devise'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install railsyard-authentication-devise

## Usage

1. Set the authenticator in config/initializers/railsyard.rb:

        Railsyard::Backend.authentication_adapter = Railsyard::Backend::Authentication::Devise
        Railsyard::Backend.authenticator_initializer = lambda { |authenticator| authenticator.scope = :user }

2. Install and configure devise in your custom app:

        rails generate devise:install
        rails generate devise MODEL

3. Configure routes.rb:

        MyApp::Application.routes.draw do
          railsyard_authentication_devise_for MODEL
        end

4. Add the `devise_mailer` method to your model class:

      class User < ActiveRecord::Base
        def devise_mailer
          RailsyardAuthenticationDevise::Mailer
        end
      end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
