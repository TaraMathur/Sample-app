require 'rails_helper'

	describe "Home page" do

		it "expects to have the h1 Sample App" do
			visit '/static_pages/home'
			expect(page).to have_selector("h1", text: "Sample App")
		end
	
		it "expects to have the right title" do
			visit '/static_pages/home'
			expect(page.title).to include "Ruby on Rails Tutorial Sample App"
		end

	end

	describe "Help page" do
		it "expects to have the h1 Help" do
			visit '/static_pages/help'
			expect(page).to have_selector("h1", text: "Help")
		end
	
		it "expects to have the right title" do
			visit '/static_pages/help'
			expect(page.title).to include "Ruby on Rails Tutorial Sample App - Help"
		end

	end

	describe "About page" do
		it "expects to have the h1 About Us" do
			visit '/static_pages/about'
			expect(page).to have_selector("h1", text: "About Us")
		end

		it "expects to have the right title" do
			visit '/static_pages/about'
			expect(page.title).to include "Ruby on Rails Tutorial Sample App - About Us"
		end
	end
