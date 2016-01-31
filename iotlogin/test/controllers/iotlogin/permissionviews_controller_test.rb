require 'test_helper'

module Iotlogin
  class PermissionviewsControllerTest < ActionController::TestCase
    setup do
      @permissionview = iotlogin_permissionviews(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:permissionviews)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create permissionview" do
      assert_difference('Permissionview.count') do
        post :create, permissionview: { name: @permissionview.name, permission_id: @permissionview.permission_id, viewmenu_id: @permissionview.viewmenu_id }
      end

      assert_redirected_to permissionview_path(assigns(:permissionview))
    end

    test "should show permissionview" do
      get :show, id: @permissionview
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @permissionview
      assert_response :success
    end

    test "should update permissionview" do
      patch :update, id: @permissionview, permissionview: { name: @permissionview.name, permission_id: @permissionview.permission_id, viewmenu_id: @permissionview.viewmenu_id }
      assert_redirected_to permissionview_path(assigns(:permissionview))
    end

    test "should destroy permissionview" do
      assert_difference('Permissionview.count', -1) do
        delete :destroy, id: @permissionview
      end

      assert_redirected_to permissionviews_path
    end
  end
end
