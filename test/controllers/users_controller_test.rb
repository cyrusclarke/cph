require 'test_helper'

class UsersControllerTest < ActionController::TestCase
    test "user dashboard" do
   		user = FactoryGirl.create(:user)
   		sign_in user
		get :show, id: user

   		assert_response :success
		end

  test "user dashboard not logged in" do
   		user = FactoryGirl.create(:user)
   		#sign_in user
		get :show, id: user
   		assert_redirected_to new_user_session_url #checking that if the user is not logged in it is not a success and that the user is redirected
		end

	test "user 2 tries to access user 1 page" do
   		user1 = FactoryGirl.create(:user)
   		user2 = FactoryGirl.create(:user)
   		sign_in user2
   		get :show, id: user1
   		assert_response :forbidden
   		end

   	test "create a comment" do
   		user1 = FactoryGirl.create(:user)
   		sign_in user1

   		place = FactoryGirl.create(:place)
   		post :create
   		:place_id @place.id
   		:comment {:rating => "1_star", :message => 'something'}
   	end

   	assert_redirected_to place_path(place)
   	assert_response :success
   end
