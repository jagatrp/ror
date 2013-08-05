require_relative '../spec_helper'


describe "User Authentication" do
	it "signup user" do
		visit '/users/sign_up'
		fill_in 'Email', with: 'jagatram82@hotmail.com'
		fill_in 'Password', with: 'jagat'
                fill_in 'Password confirmation', with: 'jagat'
                #save_and_open_page
		click_button 'Sign up'
		#save_and_open_page
		expect(page).to have_content 'Welcome! You have signed up successfully'	
	end
end
