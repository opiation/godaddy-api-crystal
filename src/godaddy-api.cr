require "http/client"
require "json"
require "./godaddy-api/*"

# TODO: Write documentation for `Godaddy::Api`
module Godaddy
  module Api
    class Client
      API_HOST = "api.godaddy.com"
      API_VERSION = 1

      property headers : HTTP::Headers

      def initialize(key : String, secret : String, shopper_id = nil)
        @headers = HTTP::Headers.new
        @headers["Accept"] = "application/json"
        @headers["Authorization"] = "sso-key #{key}:#{secret}"
        @headers["X-Shopper-Id"] = shopper_id.to_s unless shopper_id.nil?
      end

      def domain(name : String) : DomainDetail
        DomainDetail.from_json get("domain/#{name}")
      end

      def domains : Array(Domain)
        JSON.parse(get("domains")).map do |domain|
          Domain.from_json domain.to_json
        end
      end

      private def get(path : String) : String
        HTTP::Client.get(url(path), @headers).body
      end

      private def url(path : String) : String
        "https://#{API_HOST}/v#{API_VERSION}/#{path}"
      end
    end
  end
end

API_KEY = "dKYdYDvD1fLj_TPc9VzUSUR5qEBtf17mnqf"
API_SECRET = "TPcHdRbadhDbSvBJAoUn6m"
SHOPPER_ID = 126447310

client = Godaddy::Api::Client.new API_KEY, API_SECRET
client.domains.each do |domain|
  puts domain.domain
  puts client.domain domain.domain
end
