class NodeMessageTypesController < ApplicationController
  before_action :set_node_message_type, only: [:show, :edit, :update, :destroy]

  # GET /node_message_types
  # GET /node_message_types.json
  def index
    @node_message_types = NodeMessageType.all
  end

  # GET /node_message_types/1
  # GET /node_message_types/1.json
  def show
  end

  # GET /node_message_types/new
  def new
    @node_message_type = NodeMessageType.new
  end

  # GET /node_message_types/1/edit
  def edit
  end

  # POST /node_message_types
  # POST /node_message_types.json
  def create
    @node_message_type = NodeMessageType.new(node_message_type_params)

    respond_to do |format|
      if @node_message_type.save
        format.html { redirect_to @node_message_type, notice: 'Node message type was successfully created.' }
        format.json { render :show, status: :created, location: @node_message_type }
      else
        format.html { render :new }
        format.json { render json: @node_message_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /node_message_types/1
  # PATCH/PUT /node_message_types/1.json
  def update
    respond_to do |format|
      if @node_message_type.update(node_message_type_params)
        format.html { redirect_to @node_message_type, notice: 'Node message type was successfully updated.' }
        format.json { render :show, status: :ok, location: @node_message_type }
      else
        format.html { render :edit }
        format.json { render json: @node_message_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /node_message_types/1
  # DELETE /node_message_types/1.json
  def destroy
    @node_message_type.destroy
    respond_to do |format|
      format.html { redirect_to node_message_types_url, notice: 'Node message type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node_message_type
      @node_message_type = NodeMessageType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def node_message_type_params
      params.require(:node_message_type).permit(:name, :description, :downloaded)
    end
end
