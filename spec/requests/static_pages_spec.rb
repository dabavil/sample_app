require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_title("#{base_title} | Home")
    end


  end

  describe "Help page" do
  	it "should have content 'Help' on page" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

  	it "should have the title 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_title("#{base_title} | Help")
  	end

  end

  describe "About page" do
  	it "should have content 'About Us' on page" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end

  	it "should have the title 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_title("#{base_title} | About")
  	end
  end

  describe "Contact page" do
  	it "should have content 'Contact Page'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact Page')
  	end

  	it "should have the title 'Contact'" do
  		visit '/static_pages/contact'
  		expect(page).to have_title("#{base_title} | Contact Us")
  	end
  end


end
