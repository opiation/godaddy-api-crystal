require "json"

class Godaddy::VerificationDomainName
  STATUSES = %w(APPROVED PENDING REJECTED UNABLE_TO_RETRIEVE_STATUS)

  JSON.mapping(
    status: String
  )
end
