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
end
