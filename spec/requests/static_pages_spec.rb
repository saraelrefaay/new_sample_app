require 'spec_helper'

describe "StaticPages" do

	subject { page }

	describe "Home page" do

		before { visit root_path }

		it {should have_content('sample app')}
		it {should have_selector('h1', text: 'sample app')}
		it {should have_selector('title', text: full_title(''))}
		it {should_not have_selector('title', :text => '| Home')}
	end

	describe "Help page" do
		before { visit help_path }

		it {should have_content('help')}
		it {should have_selector('h1', text: 'Help')}
		it {should have_selector('title', text: full_title('Help'))}
	end

	describe "About page" do
		before { visit about_path }

		it {should have_content('about us')}
		it {should have_selector('h1', text: 'about us')}
		it {should have_content('about')}
		it {should have_selector('h1', text: 'about')}
	end


	describe "Contact page" do
		before { visit contact_path }

		it {should have_content('Contact')}
		it {should have_selector('h1', text: 'Contact')}
		it {should have_selector('title', text:  full_title('Contact'))}
	end

	it "should have the right link" do
		visit root_path
		click_link "sample app"
		page.should have_selector 'h1', text: 'sample app'
		click_link "About"
		page.should have_selector 'h1', text: 'about us'
		click_link "Help"
		page.should have_selector 'h1', text: 'Help'
		click_link "contact"
		page.should have_selector 'h1', text: 'Contact'
		click_link "Home"
		click_link "sign up now!"
		page.should have_selector 'h1', text: 'Sign up'

	end
end
