require_relative '../spec_helper'


describe "User Authentication" do
	it "signup user" do
		visit '/user/signup'
		fill_in 'Email', with: 'prajapatijagat2009@gmail.com'
		fill_in 'Password', with: 'seckret'
		click_button 'Submit'
		page.should_have_content 'Signed up!'	
	end
end
