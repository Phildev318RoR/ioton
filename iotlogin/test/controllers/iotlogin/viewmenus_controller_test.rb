require 'test_helper'

module Iotlogin
  class ViewmenusControllerTest < ActionController::TestCase
    setup do
      @viewmenu = iotlogin_viewmenus(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:viewmenus)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create viewmenu" do
      assert_difference('Viewmenu.count') do
        post :create, viewmenu: { description: @viewmenu.description, name: @viewmenu.name }
      end

      assert_redirected_to viewmenu_path(assigns(:viewmenu))
    end

    test "should show viewmenu" do
      get :show, id: @viewmenu
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @viewmenu
      assert_response :success
    end

    test "should update viewmenu" do
      patch :update, id: @viewmenu, viewmenu: { description: @viewmenu.description, name: @viewmenu.name }
      assert_redirected_to viewmenu_path(assigns(:viewmenu))
    end

    test "should destroy viewmenu" do
      assert_difference('Viewmenu.count', -1) do
        delete :destroy, id: @viewmenu
      end

      assert_redirected_to viewmenus_path
    end
  end
end
