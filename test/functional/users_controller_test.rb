require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { Age: @user.Age, Date_of_birth: @user.Date_of_birth, Email_address: @user.Email_address, First_name: @user.First_name, Last_name: @user.Last_name, Nationality: @user.Nationality, Sex: @user.Sex, work_experiance: @user.work_experiance }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { Age: @user.Age, Date_of_birth: @user.Date_of_birth, Email_address: @user.Email_address, First_name: @user.First_name, Last_name: @user.Last_name, Nationality: @user.Nationality, Sex: @user.Sex, work_experiance: @user.work_experiance }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
