require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Wix < OmniAuth::Strategies::OAuth2

      option :provider_ignores_state, true

      option :client_options, {
          :site          => 'https://www.wix.com',
          :authorize_url => '/installer/install',
          :token_url     => '/oauth/access'
      }

      uid{ raw_info['instance']['instanceId'] }

      info do
        {
            :site_url => raw_info['site']['url'],
        }
      end

      extra do
        {
            'raw_info' => raw_info['site']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('https://dev.wix.com/api/v1/instance').parsed
      end

      def callback_url
        full_host + script_name + callback_path
      end

    end
  end
end
