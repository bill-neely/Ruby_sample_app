require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have the right title" do
     visit '/static_pages/home'
     expect(page.title).to eq "#{base_title}"
   end
 end

 describe "Help page" do
  it "should have the content 'Help'" do
    visit '/static_pages/help'
    expect(page).to have_content('Help')
  end
  it "should have the right title" do
   visit '/static_pages/help'
   expect(page.title).to eq "#{base_title} | Help"
 end
end

describe "About page" do
  it "should have the content 'About Us'" do
    visit '/static_pages/about'
    expect(page).to have_content('About Us')
  end
  it "should have the right title" do
   visit '/static_pages/about'
   expect(page.title).to eq "#{base_title} | About Us"
 end
end

describe "Contact Page" do
  it "should have the content 'Contact Ruby on Rails'" do
    visit '/static_pages/contact'
    expect(page).to have_content('Contact Ruby on Rails')
  end
  it "should have the right title" do
   visit '/static_pages/contact'
   expect(page.title).to eq "#{base_title} | Contact Us"
 end
end

end
