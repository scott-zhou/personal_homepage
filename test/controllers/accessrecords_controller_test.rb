require 'test_helper'

class AccessrecordsControllerTest < ActionController::TestCase
  setup do
    @accessrecord = accessrecords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accessrecords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accessrecord" do
    assert_difference('Accessrecord.count') do
      post :create, accessrecord: { remote_ip: @accessrecord.remote_ip }
    end

    assert_redirected_to accessrecord_path(assigns(:accessrecord))
  end

  test "should show accessrecord" do
    get :show, id: @accessrecord
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accessrecord
    assert_response :success
  end

  test "should update accessrecord" do
    patch :update, id: @accessrecord, accessrecord: { remote_ip: @accessrecord.remote_ip }
    assert_redirected_to accessrecord_path(assigns(:accessrecord))
  end

  test "should destroy accessrecord" do
    assert_difference('Accessrecord.count', -1) do
      delete :destroy, id: @accessrecord
    end

    assert_redirected_to accessrecords_path
  end
end
