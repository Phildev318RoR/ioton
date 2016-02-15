require 'test_helper'

class RulesControllerTest < ActionController::TestCase
  setup do
    @rule = rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rule" do
    assert_difference('Rule.count') do
      post :create, rule: { description: @rule.description, downloaded: @rule.downloaded, name: @rule.name, node_message_parrameter_id: @rule.node_message_parrameter_id, rule_type_id: @rule.rule_type_id, rule_value: @rule.rule_value }
    end

    assert_redirected_to rule_path(assigns(:rule))
  end

  test "should show rule" do
    get :show, id: @rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rule
    assert_response :success
  end

  test "should update rule" do
    patch :update, id: @rule, rule: { description: @rule.description, downloaded: @rule.downloaded, name: @rule.name, node_message_parrameter_id: @rule.node_message_parrameter_id, rule_type_id: @rule.rule_type_id, rule_value: @rule.rule_value }
    assert_redirected_to rule_path(assigns(:rule))
  end

  test "should destroy rule" do
    assert_difference('Rule.count', -1) do
      delete :destroy, id: @rule
    end

    assert_redirected_to rules_path
  end
end