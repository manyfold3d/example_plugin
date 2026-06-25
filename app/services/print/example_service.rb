require "faraday"
require "faraday/multipart"

class Print::ExampleService
  # i18n-tasks-use t("print_hosts.protocols.example")
  PROTOCOL = "example".freeze

  INPUT_TYPES = [Mime[:gcode], Mime[:sl1]].freeze

  def initialize(print_host:)
    @print_host = print_host
  end

  def ok?
    false
  end

  def upload(file:, start_print: true)
    raise PrintHost::NotReady unless ok?
  end
end
