
module WaveApps
  module Wrapper
    class Business
      def all
        params = {
          access_token: self.access_token
        }
        params[:redirect_uri] = config.redirect_uri if config.redirect_uri
        uri = URI::HTTPS.build(
          host: config.base_url,
          path: ACCESS_TOKEN_URL,
          query: URI.encode_www_form(params)
        )
        return JSON.parse(Net::HTTP.get(uri).body)
      end
    end
  end
end
