require "websmsby/version"
require "websmsby/websmsby_api"

module Websmsby
  def self.send_sms
    WebsmsbyApi.new.send_sms
  end
end
