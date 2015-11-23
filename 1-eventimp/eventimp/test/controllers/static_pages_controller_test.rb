require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "EventImp - A Social Calendar"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | EventImp - Help"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | EventImp - About"
  end
  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | EventImp - Contact"
  end
end
