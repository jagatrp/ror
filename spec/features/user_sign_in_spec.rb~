require_relative '../spec_helper'


describe "the signin process" do
	before :each do
		User.create(:email => 'prajapatijagat2009@gmail.com', :password => 'jagat@123');
	end

	it "signin user" do
		#User.create(:email => 'prajapatijagat2009@gmail.com', :password => 'jagat@123');
		
		visit '/users/sign_in'
		fill_in 'Email', with: 'prajapatijagat2009@gmail.com'
		fill_in 'Password', with: 'jagat@123'
                
                #save_and_open_page
		click_button 'Sign in'
		#save_and_open_page
		expect(page).to have_content 'Signed in successfully'	
	end

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
