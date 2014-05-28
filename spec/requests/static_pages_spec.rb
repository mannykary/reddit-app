require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Home Page'" do
      visit '/'
      expect(page).to have_content('Home Page')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
end
