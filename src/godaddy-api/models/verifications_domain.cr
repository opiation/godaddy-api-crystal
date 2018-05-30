require "json"

class Godaddy::VerificationsDomain
  JSON.mapping(
    domain_name: {
      key: "domainName",
      type: VerificationDomainName?
    },
    real_name: {
      key: "realName",
      type: VerificationRealName?
    }
  )
end