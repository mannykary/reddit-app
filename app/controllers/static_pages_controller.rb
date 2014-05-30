require 'net/http'
require 'json'

class StaticPagesController < ApplicationController
  def about
  end

  def home
    url = 'http://www.reddit.com/r/all.json'
    request = Net::HTTP.get(URI.parse(url.to_s))
    hash = JSON.parse request
    @subhash = hash["data"]["children"]
  end
end
