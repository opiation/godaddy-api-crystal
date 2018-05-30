require "http/client"
require "json"

require "../*"
require "../api/*"
require "../models/*"

# TODO: Write documentation for `Godaddy::Api`
class Godaddy::Api::Client
  API_HOST = "api.godaddy.com"
  API_VERSION = 1

  property key : String
  property secret : String
  property shopper_id : Int32?

  def initialize(@key : String, @secret : String, @shopper_id = nil)
  end

  def domain(name : String) : DomainDetail
    DomainDetail.from_json get("domains/#{name}").as(String)
  end

  def domains : Array(DomainSummary)
    Array(DomainSummary).from_json get("domains").as(String)
  end

  private def get(path : String) : String?
    response = HTTP::Client.get(url(path), headers)
    begin
      case response.status_code
      when 200
        response.body
      when 400 || 401 || 403 || 422 || 500
        raise Godaddy::Error.from_json response.body
      when 429
        raise Godaddy::ErrorLimit.from_json response.body
      end
    rescue ex
      puts ex.message
      ""
    end
  end

  private def headers
    request_headers = HTTP::Headers.new
    request_headers["Accept"] = "application/json"
    request_headers["Authorization"] = "sso-key #{key}:#{secret}"
    request_headers["X-Shopper-Id"] = shopper_id.to_s unless shopper_id.nil?
    request_headers
  end

  private def url(path : String) : String
    "https://#{API_HOST}/v#{API_VERSION}/#{path}"
  end
end
