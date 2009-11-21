require 'test_helper'

class BallotsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ballots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ballot" do
    assert_difference('Ballot.count') do
      post :create, :ballot => { }
    end

    assert_redirected_to ballot_path(assigns(:ballot))
  end

  test "should show ballot" do
    get :show, :id => ballots(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ballots(:one).to_param
    assert_response :success
  end

  test "should update ballot" do
    put :update, :id => ballots(:one).to_param, :ballot => { }
    assert_redirected_to ballot_path(assigns(:ballot))
  end

  test "should destroy ballot" do
    assert_difference('Ballot.count', -1) do
      delete :destroy, :id => ballots(:one).to_param
    end

    assert_redirected_to ballots_path
  end
end
