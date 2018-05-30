require "http/client"
require "json"

require "./godaddy-api/*"
require "./godaddy-api/api/*"
require "./godaddy-api/models/*"

# client = Godaddy::Api::Client.new API_KEY, API_SECRET
# client.domains.each do |domain|
#   puts domain.name
#   domain_detail = client.domain name: domain.name
#   puts domain_detail
# end
