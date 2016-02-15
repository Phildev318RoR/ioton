require 'test_helper'

class GroupRuleDetailsControllerTest < ActionController::TestCase
  setup do
    @group_rule_detail = group_rule_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_rule_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_rule_detail" do
    assert_difference('GroupRuleDetail.count') do
      post :create, group_rule_detail: { downloaded: @group_rule_detail.downloaded, group_rule_id: @group_rule_detail.group_rule_id, rule_id: @group_rule_detail.rule_id }
    end

    assert_redirected_to group_rule_detail_path(assigns(:group_rule_detail))
  end

  test "should show group_rule_detail" do
    get :show, id: @group_rule_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_rule_detail
    assert_response :success
  end

  test "should update group_rule_detail" do
    patch :update, id: @group_rule_detail, group_rule_detail: { downloaded: @group_rule_detail.downloaded, group_rule_id: @group_rule_detail.group_rule_id, rule_id: @group_rule_detail.rule_id }
    assert_redirected_to group_rule_detail_path(assigns(:group_rule_detail))
  end

  test "should destroy group_rule_detail" do
    assert_difference('GroupRuleDetail.count', -1) do
      delete :destroy, id: @group_rule_detail
    end

    assert_redirected_to group_rule_details_path
  end
end
