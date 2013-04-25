require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
	 
     test "that /login resolves to the login page" do
     	get '/login'
     	assert_response :success
          printf("Login page resolves to the login page |")
     end

     test "that /logout resolves to the logout" do
     	get '/logout'
     	assert_response :redirect
     	assert_redirected_to '/'
          printf("Logout resolves to the logout page |")
	 end

	test "that /register resolves to the register page" do
     	get '/register'
     	assert_response :success
          printf("Register resolves to the register page |")
	end

     test "that the profile page works" do
          get '/Cats'
          assert_response :success
          printf("Profile page works |")
     end

end
