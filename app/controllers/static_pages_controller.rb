require 'net/http'
require 'json'
require 'date'

class StaticPagesController < ApplicationController
  
  BASE_URL = 'http://www.reddit.com/r/all.json?limit=100'
  
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
    
  def parse_json (url)
    request = Net::HTTP.get(URI.parse(url.to_s))
    @hash = JSON.parse request
    @subhash = @hash["data"]["children"]
  end
  
end
