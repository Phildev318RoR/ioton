class NodeMessageParrametersController < ApplicationController
  before_action :set_node_message_parrameter, only: [:show, :edit, :update, :destroy]

  # GET /node_message_parrameters
  # GET /node_message_parrameters.json
  def index
    @node_message_parrameters = NodeMessageParrameter.all
  end

  # GET /node_message_parrameters/1
  # GET /node_message_parrameters/1.json
  def show
  end

  # GET /node_message_parrameters/new
  def new
    @node_message_parrameter = NodeMessageParrameter.new
  end

  # GET /node_message_parrameters/1/edit
  def edit
  end

  # POST /node_message_parrameters
  # POST /node_message_parrameters.json
  def create
    @node_message_parrameter = NodeMessageParrameter.new(node_message_parrameter_params)

    respond_to do |format|
      if @node_message_parrameter.save
        format.html { redirect_to @node_message_parrameter, notice: 'Node message parrameter was successfully created.' }
        format.json { render :show, status: :created, location: @node_message_parrameter }
      else
        format.html { render :new }
        format.json { render json: @node_message_parrameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /node_message_parrameters/1
  # PATCH/PUT /node_message_parrameters/1.json
  def update
    respond_to do |format|
      if @node_message_parrameter.update(node_message_parrameter_params)
        format.html { redirect_to @node_message_parrameter, notice: 'Node message parrameter was successfully updated.' }
        format.json { render :show, status: :ok, location: @node_message_parrameter }
      else
        format.html { render :edit }
        format.json { render json: @node_message_parrameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /node_message_parrameters/1
  # DELETE /node_message_parrameters/1.json
  def destroy
    @node_message_parrameter.destroy
    respond_to do |format|
      format.html { redirect_to node_message_parrameters_url, notice: 'Node message parrameter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node_message_parrameter
      @node_message_parrameter = NodeMessageParrameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def node_message_parrameter_params
      params.require(:node_message_parrameter).permit(:name, :node_message_id, :value_type_id, :value_length, :value_index, :downloaded)
    end
end
