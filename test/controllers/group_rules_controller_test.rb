require 'test_helper'

class GroupRulesControllerTest < ActionController::TestCase
  setup do
    @group_rule = group_rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_rule" do
    assert_difference('GroupRule.count') do
      post :create, group_rule: { client_id: @group_rule.client_id, description: @group_rule.description, downloaded: @group_rule.downloaded, name: @group_rule.name, rule_type_id: @group_rule.rule_type_id, rule_value: @group_rule.rule_value }
    end

    assert_redirected_to group_rule_path(assigns(:group_rule))
  end

  test "should show group_rule" do
    get :show, id: @group_rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_rule
    assert_response :success
  end

  test "should update group_rule" do
    patch :update, id: @group_rule, group_rule: { client_id: @group_rule.client_id, description: @group_rule.description, downloaded: @group_rule.downloaded, name: @group_rule.name, rule_type_id: @group_rule.rule_type_id, rule_value: @group_rule.rule_value }
    assert_redirected_to group_rule_path(assigns(:group_rule))
  end

  test "should destroy group_rule" do
    assert_difference('GroupRule.count', -1) do
      delete :destroy, id: @group_rule
    end

    assert_redirected_to group_rules_path
  end
end
