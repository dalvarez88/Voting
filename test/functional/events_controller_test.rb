require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events" do
    assert_difference('Events.count') do
      post :create, :events => { }
    end

    assert_redirected_to events_path(assigns(:events))
  end

  test "should show events" do
    get :show, :id => events(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => events(:one).to_param
    assert_response :success
  end

  test "should update events" do
    put :update, :id => events(:one).to_param, :events => { }
    assert_redirected_to events_path(assigns(:events))
  end

  test "should destroy events" do
    assert_difference('Events.count', -1) do
      delete :destroy, :id => events(:one).to_param
    end

    assert_redirected_to events_path
  end
end
