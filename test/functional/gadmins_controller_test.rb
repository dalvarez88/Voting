require 'test_helper'

class GadminsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gadmins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gadmin" do
    assert_difference('Gadmin.count') do
      post :create, :gadmin => { }
    end

    assert_redirected_to gadmin_path(assigns(:gadmin))
  end

  test "should show gadmin" do
    get :show, :id => gadmins(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => gadmins(:one).to_param
    assert_response :success
  end

  test "should update gadmin" do
    put :update, :id => gadmins(:one).to_param, :gadmin => { }
    assert_redirected_to gadmin_path(assigns(:gadmin))
  end

  test "should destroy gadmin" do
    assert_difference('Gadmin.count', -1) do
      delete :destroy, :id => gadmins(:one).to_param
    end

    assert_redirected_to gadmins_path
  end
end
