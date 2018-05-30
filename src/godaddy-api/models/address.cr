require "json"

class Godaddy::Address
  JSON.mapping(
    address1: String,
    address2: String?,
    city: String,
    country: String,
    postal_code: {
      key: "postalCode",
      type: String
    },
    state: String
  )
end
