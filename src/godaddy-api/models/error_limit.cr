require "json"

class Godaddy::ErrorLimit < Exception
  JSON.mapping(
    code: String,
    fields: Array(ErrorField)?,
    message: String?,
    retry_after_sec: {
      key: "retryAfterSec",
      type: Int32
    }
  )
end
