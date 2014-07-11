require 'spec_helper'

describe "Static pages" do

subject { page }
let(:title_start) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
	before { visit root_path }
	
    it { should have_content('Sample App') }
	it { should have_title(title_start) }
	it { should_not have_title('| Home') }
  end
  
  describe "Help page" do
    before { visit help_path }
    
	it { should have_content('Help') }
	it { should have_title("#{title_start} | Help") }
  end
  
  describe "About page" do
    before { visit about_path }
    
	it { should have_content('About Us') }
	it { should have_title("#{title_start} | About Us") }	
  end
  
  describe "Contact page" do
	before { visit contact_path }
    
	it { should have_content('Contact') }
	it { should have_title("#{title_start} | Contact") }
  end
  
end