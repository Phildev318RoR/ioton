require 'test_helper'

class PermissionviewrolesControllerTest < ActionController::TestCase
  setup do
    @permissionviewrole = permissionviewroles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:permissionviewroles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create permissionviewrole" do
    assert_difference('Permissionviewrole.count') do
      post :create, permissionviewrole: { permissionview_id: @permissionviewrole.permissionview_id, role_id: @permissionviewrole.role_id }
    end

    assert_redirected_to permissionviewrole_path(assigns(:permissionviewrole))
  end

  test "should show permissionviewrole" do
    get :show, id: @permissionviewrole
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @permissionviewrole
    assert_response :success
  end

  test "should update permissionviewrole" do
    patch :update, id: @permissionviewrole, permissionviewrole: { permissionview_id: @permissionviewrole.permissionview_id, role_id: @permissionviewrole.role_id }
    assert_redirected_to permissionviewrole_path(assigns(:permissionviewrole))
  end

  test "should destroy permissionviewrole" do
    assert_difference('Permissionviewrole.count', -1) do
      delete :destroy, id: @permissionviewrole
    end

    assert_redirected_to permissionviewroles_path
  end
end
