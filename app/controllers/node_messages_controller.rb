class NodeMessagesController < ApplicationController
  before_action :set_node_message, only: [:show, :edit, :update, :destroy]

  # GET /node_messages
  # GET /node_messages.json
  def index
    @node_messages = NodeMessage.all
  end

  # GET /node_messages/1
  # GET /node_messages/1.json
  def show
  end

  # GET /node_messages/new
  def new
    @node_message = NodeMessage.new
  end

  # GET /node_messages/1/edit
  def edit
  end

  # POST /node_messages
  # POST /node_messages.json
  def create
    @node_message = NodeMessage.new(node_message_params)

    respond_to do |format|
      if @node_message.save
        format.html { redirect_to @node_message, notice: 'Node message was successfully created.' }
        format.json { render :show, status: :created, location: @node_message }
      else
        format.html { render :new }
        format.json { render json: @node_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /node_messages/1
  # PATCH/PUT /node_messages/1.json
  def update
    respond_to do |format|
      if @node_message.update(node_message_params)
        format.html { redirect_to @node_message, notice: 'Node message was successfully updated.' }
        format.json { render :show, status: :ok, location: @node_message }
      else
        format.html { render :edit }
        format.json { render json: @node_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /node_messages/1
  # DELETE /node_messages/1.json
  def destroy
    @node_message.destroy
    respond_to do |format|
      format.html { redirect_to node_messages_url, notice: 'Node message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node_message
      @node_message = NodeMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def node_message_params
      params.require(:node_message).permit(:name, :node_type_id, :node_message_type_id, :downloaded)
    end
end
