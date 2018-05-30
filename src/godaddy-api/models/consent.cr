require "json"

class Godaddy::Consent
  JSON.mapping(
    agreed_at: {
      key: "agreedAt",
      type: String
    },
    agreed_by: {
      key: "agreedBy",
      type: String
    },
    agreement_keys: {
      key: "agreementKeys",
      type: Array(String)
    }
  )
end
