require "json"

module Godaddy
  class Domain
    JSON.mapping(
      created_at: {
        key: "createdAt",
        type: String
      },
      domain: String,
      domain_id: {
        key: "domainId",
        type: Int32
      },
      expiration_protected: {
        key: "expirationProtected",
        type: Bool
      },
      expires: String,
      hold_registrar: {
        key: "holdRegistrar",
        type: Bool
      },
      locked: Bool,
      privacy: Bool,
      renew_auto: {
        key: "renewAuto",
        type: Bool
      },
      renew_deadline: {
        key: "renewDeadline",
        type: String
      },
      renewable: Bool,
      status: String,
      transfer_protected: {
        key: "transferProtected",
        type: Bool
      }
    )
  end
end
