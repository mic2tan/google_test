require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "home page" do
  	let(:user) { FactoryGirl.create(:user) }
    before { visit root_path }
    
    
    it {user.latitude.should eq(43.0718677) }
    it { should have_content('Listing users') }
    #it { should have_title(full_title('Sign up')) }

    it { should have_selector("div#button_one") }
    it { should have_selector("div#button_two") }
    it { should have_selector("div#map") }
  end
end