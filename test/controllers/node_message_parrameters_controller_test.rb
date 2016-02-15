require 'test_helper'

class NodeMessageParrametersControllerTest < ActionController::TestCase
  setup do
    @node_message_parrameter = node_message_parrameters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:node_message_parrameters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create node_message_parrameter" do
    assert_difference('NodeMessageParrameter.count') do
      post :create, node_message_parrameter: { downloaded: @node_message_parrameter.downloaded, name: @node_message_parrameter.name, node_message_id: @node_message_parrameter.node_message_id, value_index: @node_message_parrameter.value_index, value_length: @node_message_parrameter.value_length, value_type_id: @node_message_parrameter.value_type_id }
    end

    assert_redirected_to node_message_parrameter_path(assigns(:node_message_parrameter))
  end

  test "should show node_message_parrameter" do
    get :show, id: @node_message_parrameter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @node_message_parrameter
    assert_response :success
  end

  test "should update node_message_parrameter" do
    patch :update, id: @node_message_parrameter, node_message_parrameter: { downloaded: @node_message_parrameter.downloaded, name: @node_message_parrameter.name, node_message_id: @node_message_parrameter.node_message_id, value_index: @node_message_parrameter.value_index, value_length: @node_message_parrameter.value_length, value_type_id: @node_message_parrameter.value_type_id }
    assert_redirected_to node_message_parrameter_path(assigns(:node_message_parrameter))
  end

  test "should destroy node_message_parrameter" do
    assert_difference('NodeMessageParrameter.count', -1) do
      delete :destroy, id: @node_message_parrameter
    end

    assert_redirected_to node_message_parrameters_path
  end
end
