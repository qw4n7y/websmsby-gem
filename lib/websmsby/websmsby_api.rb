require 'uri'
require 'net/http'
require 'net/https'

module Websmsby
  class WebsmsbyApi

    def config
      {
        :url => "http://websms.by",
        :timeout => 15,
        :user => "user@gmail.com",
        :apikey => "qwerty123"
      }
    end

    def api(r, params = {})
      post_params = {}
      params.each {|key, value| post_params[key] = value}
      post_params[:r] = r
      post_params[:user] = config[:user]
      post_params[:apikey] = config[:apikey]

      uri = URI(config[:url])
      response = Net::HTTP.post_form uri, post_params

      return response.body
    end
  end
end