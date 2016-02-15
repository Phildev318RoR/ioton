class GroupRulesController < ApplicationController
  before_action :set_group_rule, only: [:show, :edit, :update, :destroy]

  # GET /group_rules
  # GET /group_rules.json
  def index
    @group_rules = GroupRule.all
  end

  # GET /group_rules/1
  # GET /group_rules/1.json
  def show
  end

  # GET /group_rules/new
  def new
    @group_rule = GroupRule.new
  end

  # GET /group_rules/1/edit
  def edit
  end

  # POST /group_rules
  # POST /group_rules.json
  def create
    @group_rule = GroupRule.new(group_rule_params)

    respond_to do |format|
      if @group_rule.save
        format.html { redirect_to @group_rule, notice: 'Group rule was successfully created.' }
        format.json { render :show, status: :created, location: @group_rule }
      else
        format.html { render :new }
        format.json { render json: @group_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_rules/1
  # PATCH/PUT /group_rules/1.json
  def update
    respond_to do |format|
      if @group_rule.update(group_rule_params)
        format.html { redirect_to @group_rule, notice: 'Group rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_rule }
      else
        format.html { render :edit }
        format.json { render json: @group_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_rules/1
  # DELETE /group_rules/1.json
  def destroy
    @group_rule.destroy
    respond_to do |format|
      format.html { redirect_to group_rules_url, notice: 'Group rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_rule
      @group_rule = GroupRule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_rule_params
      params.require(:group_rule).permit(:name, :description, :client_id, :rule_type_id, :rule_value, :downloaded)
    end
end
