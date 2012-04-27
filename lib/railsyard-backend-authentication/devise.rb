require 'railsyard-backend/authentication/none'

module Railsyard::Backend
  module Authentication

    class Devise < None
      attr_accessor :scope

      def authenticate!
        warden.authenticate!(scope: @scope)
      end

      def current_user
        warden.authenticate(scope: @scope)
      end

      private

      def warden
        @controller.env['warden']
      end
    end

  end
end
