require 'test_helper'

class NodeMessagesControllerTest < ActionController::TestCase
  setup do
    @node_message = node_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:node_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create node_message" do
    assert_difference('NodeMessage.count') do
      post :create, node_message: { downloaded: @node_message.downloaded, name: @node_message.name, node_message_type_id: @node_message.node_message_type_id, node_type_id: @node_message.node_type_id }
    end

    assert_redirected_to node_message_path(assigns(:node_message))
  end

  test "should show node_message" do
    get :show, id: @node_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @node_message
    assert_response :success
  end

  test "should update node_message" do
    patch :update, id: @node_message, node_message: { downloaded: @node_message.downloaded, name: @node_message.name, node_message_type_id: @node_message.node_message_type_id, node_type_id: @node_message.node_type_id }
    assert_redirected_to node_message_path(assigns(:node_message))
  end

  test "should destroy node_message" do
    assert_difference('NodeMessage.count', -1) do
      delete :destroy, id: @node_message
    end

    assert_redirected_to node_messages_path
  end
end
