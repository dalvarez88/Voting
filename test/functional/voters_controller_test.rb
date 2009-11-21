require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voters" do
    assert_difference('Voters.count') do
      post :create, :voters => { }
    end

    assert_redirected_to voters_path(assigns(:voters))
  end

  test "should show voters" do
    get :show, :id => voters(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => voters(:one).to_param
    assert_response :success
  end

  test "should update voters" do
    put :update, :id => voters(:one).to_param, :voters => { }
    assert_redirected_to voters_path(assigns(:voters))
  end

  test "should destroy voters" do
    assert_difference('Voters.count', -1) do
      delete :destroy, :id => voters(:one).to_param
    end

    assert_redirected_to voters_path
  end
end
