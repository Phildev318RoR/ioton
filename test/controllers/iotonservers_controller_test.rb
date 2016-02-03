require 'test_helper'

class IotonserversControllerTest < ActionController::TestCase
  setup do
    @iotonserver = iotonservers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iotonservers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iotonserver" do
    assert_difference('Iotonserver.count') do
      post :create, iotonserver: { description: @iotonserver.description, downloaded: @iotonserver.downloaded, name: @iotonserver.name, site_id: @iotonserver.site_id }
    end

    assert_redirected_to iotonserver_path(assigns(:iotonserver))
  end

  test "should show iotonserver" do
    get :show, id: @iotonserver
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iotonserver
    assert_response :success
  end

  test "should update iotonserver" do
    patch :update, id: @iotonserver, iotonserver: { description: @iotonserver.description, downloaded: @iotonserver.downloaded, name: @iotonserver.name, site_id: @iotonserver.site_id }
    assert_redirected_to iotonserver_path(assigns(:iotonserver))
  end

  test "should destroy iotonserver" do
    assert_difference('Iotonserver.count', -1) do
      delete :destroy, id: @iotonserver
    end

    assert_redirected_to iotonservers_path
  end
end
