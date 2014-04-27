require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "home page" do
  	let(:user) { FactoryGirl.create(:user) }
    before { visit root_path }
    
    
    #user.latitude.should equal(43.0718677)
    it { should have_content('Listing users') }
    #it { should have_title(full_title('Sign up')) }
  end
end