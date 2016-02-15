class RuleTypesController < ApplicationController
  before_action :set_rule_type, only: [:show, :edit, :update, :destroy]

  # GET /rule_types
  # GET /rule_types.json
  def index
    @rule_types = RuleType.all
  end

  # GET /rule_types/1
  # GET /rule_types/1.json
  def show
  end

  # GET /rule_types/new
  def new
    @rule_type = RuleType.new
  end

  # GET /rule_types/1/edit
  def edit
  end

  # POST /rule_types
  # POST /rule_types.json
  def create
    @rule_type = RuleType.new(rule_type_params)

    respond_to do |format|
      if @rule_type.save
        format.html { redirect_to @rule_type, notice: 'Rule type was successfully created.' }
        format.json { render :show, status: :created, location: @rule_type }
      else
        format.html { render :new }
        format.json { render json: @rule_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rule_types/1
  # PATCH/PUT /rule_types/1.json
  def update
    respond_to do |format|
      if @rule_type.update(rule_type_params)
        format.html { redirect_to @rule_type, notice: 'Rule type was successfully updated.' }
        format.json { render :show, status: :ok, location: @rule_type }
      else
        format.html { render :edit }
        format.json { render json: @rule_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rule_types/1
  # DELETE /rule_types/1.json
  def destroy
    @rule_type.destroy
    respond_to do |format|
      format.html { redirect_to rule_types_url, notice: 'Rule type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rule_type
      @rule_type = RuleType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rule_type_params
      params.require(:rule_type).permit(:name, :description, :symbol, :downloaded)
    end
end
