require 'test_helper'

class PostsControllerTest < ActionController::TestCase

    test "redirect anonymous user to login" do
        get :index
        assert_redirected_to login_url
    end

    test "get index for authenticated user" do 
        user1 = users(:user1)

        get :index, {}, {user_id: user1.id}
        assert_response :success
    end

end
