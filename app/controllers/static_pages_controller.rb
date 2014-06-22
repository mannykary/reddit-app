require 'net/http'
require 'json'
require 'date'

class StaticPagesController < ApplicationController
  
  BASE_URL = 'http://www.reddit.com/r/all.json?limit=100'
  
  # Add Embedly API key to config/secrets.yml as embedly_api_key 
  @embedly_api = Rails.application.secrets.embedly_api_key.to_s
  
  def about
  end

  def home
    if params[:after] != nil
      url = BASE_URL + '&after=' + params[:after].to_s
    else
      url = BASE_URL
    end
    
    parse_json url
  
  end
  
  def preview
    @url_encoded = params[:url]
    @url = URI.decode(params[:url])
    puts "url_encoded:" + @url_encoded
    puts "url:" + @url
  end
    
  def parse_json (url)
    request = Net::HTTP.get(URI.parse(url.to_s))
    @hash = JSON.parse request
    @subhash = @hash["data"]["children"]
  end
  
end
