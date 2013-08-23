require 'uri'
require 'net/http'
require 'net/https'
require 'json'

module Websmsby
  class WebsmsbyApi

    def config
      {
        :url => "http://websms.by/",
        :user => Websmsby.user || "user@gmail.com",
        :apikey => Websmsby.apikey ||"qwerty123",
        :devkey => "I8uerYjw732jhhGJvhs"
      }
    end

    def form_post_params(params)
      post_params = {}
      params.each {|key, value| post_params[key] = value}
      post_params[:r] = r
      post_params[:user] = config[:user]
      post_params[:apikey] = config[:apikey]
      post_params[:devkey] = config[:devkey]
      post_params
    end

    def api(r, params = {})
      post_params = form_post_params(params)

      uri = URI(config[:url])
      response = Net::HTTP.post_form uri, post_params

      return JSON.parse response.body
    end
  end
end