require "json"

class Godaddy::Contact
  JSON.mapping(
    address_mailing: {
      key: "addressMailing",
      type: Address
    },
    email: String,
    fax: String?,
    job_title: {
      key: "jobTitle",
      type: String?
    },
    name_first: {
      key: "nameFirst",
      type: String
    },
    name_last: {
      key: "nameLast",
      type: String
    },
    name_middle: {
      key: "nameMiddle",
      type: String?
    },
    origanization: String?,
    phone: String
  )
end
