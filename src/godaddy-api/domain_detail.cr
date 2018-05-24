require "json"

module Godaddy
  class DomainDetail
    JSON.mapping(
      auth_code: {
        key: "authCode",
        type: String
      },
      # contact_admin: {
      #   key: "contactAdmin",
      #   type: Contact
      # },
      # contact_billing: {
      #   key: "contactBilling",
      #   type: Contact
      # },
      # contact_registrant: {
      #   key: "contactRegistrant",
      #   type: Contact
      # },
      # contact_tech: {
      #   key: "contactTech",
      #   type: Contact
      # },
      created_at: {
        key: "createdAt",
        type: String
      },
      deleted_at: {
        key: "deletedAt",
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
      # name_servers: {
      #   key: "nameServers",
      #   type: Array of NameServer
      # },
      privacy: Bool,
      renew_auto: {
        key: "renewAuto",
        type: Bool
      },
      renew_deadline: {
        key: "renewDeadline",
        type: String
      },
      status: String,
      subaccount_id: {
        key: "subaccountId",
        type: String
      },
      transfer_always_eligible_at: {
        key: "transferAlwaysEligibleAt",
        type: String
      },
      transfer_protected: {
        key: "transferProtected",
        type: Bool
      }
    )
  end
end
