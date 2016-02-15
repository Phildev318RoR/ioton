require 'test_helper'

class NodeMessageTypesControllerTest < ActionController::TestCase
  setup do
    @node_message_type = node_message_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:node_message_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create node_message_type" do
    assert_difference('NodeMessageType.count') do
      post :create, node_message_type: { description: @node_message_type.description, downloaded: @node_message_type.downloaded, name: @node_message_type.name }
    end

    assert_redirected_to node_message_type_path(assigns(:node_message_type))
  end

  test "should show node_message_type" do
    get :show, id: @node_message_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @node_message_type
    assert_response :success
  end

  test "should update node_message_type" do
    patch :update, id: @node_message_type, node_message_type: { description: @node_message_type.description, downloaded: @node_message_type.downloaded, name: @node_message_type.name }
    assert_redirected_to node_message_type_path(assigns(:node_message_type))
  end

  test "should destroy node_message_type" do
    assert_difference('NodeMessageType.count', -1) do
      delete :destroy, id: @node_message_type
    end

    assert_redirected_to node_message_types_path
  end
end
