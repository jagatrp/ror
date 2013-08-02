require_relative '../spec_helper'


describe "User Authentication" do
	it "signup user" do
		visit '/users/sign_up'
		fill_in 'Email', with: 'prajapatijagat2009@gmail.com'
		fill_in 'Password', with: 'seckret'
                fill_in 'Password confirmation', with: 'seckret'
                #save_and_open_page
		click_button 'Sign up'
		#save_and_open_page
		expect(page).to have_content 'Welcome! You have signed up successfully'	
	end
end
