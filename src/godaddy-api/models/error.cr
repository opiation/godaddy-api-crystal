require "json"

class Godaddy::Error < Exception
  JSON.mapping(
    code: String,
    fields: Array(ErrorField)?,
    message: String?
  )
end
