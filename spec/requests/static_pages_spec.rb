require 'spec_helper'

describe "StaticPages" do
	describe "Home page" do
		it "should have the content 'sample app'" do
			visit '/static_pages/home'
			page.should have_content('sample app')
			page.should have_selector('h1', :text => 'sample app')
		end
		it "should have the right title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Home')
		end
	end

	describe "Help page" do
		it "should have the content 'help'" do
			visit '/static_pages/help'
			page.should have_content('help')
			page.should have_selector('h1', :text => 'Help')
		end
		it "should have the right title" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Help')
		end
	end

	describe "About page" do
		it "should have the content 'about us'" do
			visit '/static_pages/about'
			page.should have_content('about us')
			page.should have_selector('h1', :text => 'about us')
		end
		it "should have the right title" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | About Us')
		end
	end


	describe "Contact page" do
		it "should have the content 'Contact'" do
			visit '/static_pages/contact'
			page.should have_content('Contact')
			page.should have_selector('h1', :text => 'Contact')
		end
		it "should have the right title" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Contact')
		end
	end
end
