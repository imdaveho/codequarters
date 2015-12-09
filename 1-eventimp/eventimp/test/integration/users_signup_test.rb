require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_create_path, user: { name: "",
                               email: "user@invalid",
                               password: "foo",
                               password_confirmation: "bar" }
    end
    assert_template 'users/new'
  end

  test "valid signup information" do
    get signup_path
    local_user = { name: "Example User",
                   email: "user@example.com",
                   password: "password",
                   password_confirmation: "password" }
    assert_difference 'User.count', 1 do
      post_via_redirect users_create_path, user: local_user
    end
    assert_template 'users/show'
    delete_via_redirect user_delete_path, id: User.find_by(name: "Example User").id
  end

end
