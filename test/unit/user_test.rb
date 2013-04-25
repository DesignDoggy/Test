require 'test_helper'
	test 'a user should have a unique profile name' do
		user = User.new(first_name: 'Jason', last_name: 'Seifer', email: 'jason@awseomecat.com')
		user.password = user.password_confirmation = 'sasasasasasaasas'
		user.profile_name = 'jasonseifer_1'
		asser user.valid?
	end
end