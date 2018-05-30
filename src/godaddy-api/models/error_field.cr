require "json"

class Godaddy::ErrorField
  JSON.mapping(
    code: String,
    message: String?,
    path: String,
    path_related: {
      key: "pathRelated",
      type: String?
    }
  )
end