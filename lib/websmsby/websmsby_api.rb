require 'uri'
require 'net/http'
require 'net/https'
require 'json'

module Websmsby
  class WebsmsbyApi

    def config
      {
        :url => "http://cp.websms.by/",
        :user => Websmsby.user || "user@gmail.com",
        :apikey => Websmsby.apikey ||"qwerty123",
        :devkey => "I8uerYjw732jhhGJvhs"
      }
    end

    def form_post_params(r, params = {})
      post_params = {}
      params.each do |key, value|
        post_params[key] = value
      end
      post_params[:r] = r
      post_params[:user] = config[:user]
      post_params[:apikey] = config[:apikey]
      post_params[:devkey] = config[:devkey]
      post_params
    end

    def call(r, params = {})
      post_params = form_post_params(r, params)

      uri = URI(config[:url])
      response = Net::HTTP.post_form uri, post_params
      
      begin
        json_response = JSON.parse response.body
      rescue Exception
        json_response = nil
      end

      return json_response
    end
  end
end