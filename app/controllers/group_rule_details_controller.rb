class GroupRuleDetailsController < ApplicationController
  before_action :set_group_rule_detail, only: [:show, :edit, :update, :destroy]

  # GET /group_rule_details
  # GET /group_rule_details.json
  def index
    @group_rule_details = GroupRuleDetail.all
  end

  # GET /group_rule_details/1
  # GET /group_rule_details/1.json
  def show
  end

  # GET /group_rule_details/new
  def new
    @group_rule_detail = GroupRuleDetail.new
  end

  # GET /group_rule_details/1/edit
  def edit
  end

  # POST /group_rule_details
  # POST /group_rule_details.json
  def create
    @group_rule_detail = GroupRuleDetail.new(group_rule_detail_params)

    respond_to do |format|
      if @group_rule_detail.save
        format.html { redirect_to @group_rule_detail, notice: 'Group rule detail was successfully created.' }
        format.json { render :show, status: :created, location: @group_rule_detail }
      else
        format.html { render :new }
        format.json { render json: @group_rule_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_rule_details/1
  # PATCH/PUT /group_rule_details/1.json
  def update
    respond_to do |format|
      if @group_rule_detail.update(group_rule_detail_params)
        format.html { redirect_to @group_rule_detail, notice: 'Group rule detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_rule_detail }
      else
        format.html { render :edit }
        format.json { render json: @group_rule_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_rule_details/1
  # DELETE /group_rule_details/1.json
  def destroy
    @group_rule_detail.destroy
    respond_to do |format|
      format.html { redirect_to group_rule_details_url, notice: 'Group rule detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_rule_detail
      @group_rule_detail = GroupRuleDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_rule_detail_params
      params.require(:group_rule_detail).permit(:group_rule_id, :rule_id, :downloaded)
    end
end
