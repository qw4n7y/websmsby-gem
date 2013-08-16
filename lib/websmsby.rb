require "action_controller/railtie" # my hardfix

require "websmsby/engine"
require "websmsby/websmsby_api"

module Websmsby
  def self.api(r, params = {})
    params = {} if not params.is_a?(Hash)
    return WebsmsbyApi.new.api(r, params)
  end
end
