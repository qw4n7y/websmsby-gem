require "action_controller/railtie" # my hardfix
require "active_support/dependencies"

require "websmsby/engine"
require "websmsby/websmsby_api"

module Websmsby

  mattr_accessor :app_root
  mattr_accessor :user
  mattr_accessor :apikey

  def self.api(r, params = {})
    params = {} if not params.is_a?(Hash)
    return WebsmsbyApi.new.api(r, params)
  end

  def self.setup
    yield self
  end
end
