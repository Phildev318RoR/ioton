require 'test_helper'

class RuleTypesControllerTest < ActionController::TestCase
  setup do
    @rule_type = rule_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rule_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rule_type" do
    assert_difference('RuleType.count') do
      post :create, rule_type: { description: @rule_type.description, downloaded: @rule_type.downloaded, name: @rule_type.name, symbol: @rule_type.symbol }
    end

    assert_redirected_to rule_type_path(assigns(:rule_type))
  end

  test "should show rule_type" do
    get :show, id: @rule_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rule_type
    assert_response :success
  end

  test "should update rule_type" do
    patch :update, id: @rule_type, rule_type: { description: @rule_type.description, downloaded: @rule_type.downloaded, name: @rule_type.name, symbol: @rule_type.symbol }
    assert_redirected_to rule_type_path(assigns(:rule_type))
  end

  test "should destroy rule_type" do
    assert_difference('RuleType.count', -1) do
      delete :destroy, id: @rule_type
    end

    assert_redirected_to rule_types_path
  end
end
