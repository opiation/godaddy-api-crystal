require "json"

module Godaddy
  class DNSRecord
    JSON.mapping(
      data: String,
      name: String,
      port: Int32,
      priority: Int32,
      protocol: String,
      service: String,
      ttl: Int32,
      type: String,
      weight: Int32
    )
  end
end
