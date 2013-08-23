require "action_controller/railtie" # my hardfix
require "active_support/dependencies"

require "websmsby/engine"
require "websmsby/websmsby_api"

module Websmsby

  mattr_accessor :app_root
  mattr_accessor :user
  mattr_accessor :apikey

  def self.setup
    yield self
  end

  def self.call(r, params = {})
    puts "call #{r.inspect} with #{params.inspect}"
    params = {} if not params.is_a?(Hash)
    return WebsmsbyApi.new.call(r, params)
  end
  
  def self.method_missing(meth, *args, &block)
    if meth.to_s =~ /^(.+)$/
      r = "api/#{$1}"
      call(r, *args)
    else
      super
    end
  end
end
