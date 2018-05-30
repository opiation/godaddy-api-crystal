require "json"

class Godaddy::DNSRecord
  TYPES = %w(A AAAA CNAME MX NS SOA SRV TXT)

  JSON.mapping(
    data: String,
    name: String,
    port: Int32?,
    priority: Int32?,
    protocol: String?,
    service: String?,
    ttl: Int32?,
    type: String,
    weight: Int32?
  )
end
