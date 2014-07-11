require 'spec_helper'

describe "User pages" do
	
	let(:title_start) { "Ruby on Rails Tutorial Sample App" }
	subject { page }
	
	describe "signup page" do
		before { visit signup_path }
		
		it { should have_content('Sign Up') }
		it { should have_title("#{title_start} | Sign Up") }
	end
end
	
