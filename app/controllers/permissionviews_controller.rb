class PermissionviewsController < ApplicationController
  before_action :set_permissionview, only: [:show, :edit, :update, :destroy]

  # GET /permissionviews
  # GET /permissionviews.json
  def index
    @permissionviews = Permissionview.all
  end

  # GET /permissionviews/1
  # GET /permissionviews/1.json
  def show
  end

  # GET /permissionviews/new
  def new
    @permissionview = Permissionview.new
  end

  # GET /permissionviews/1/edit
  def edit
  end

  # POST /permissionviews
  # POST /permissionviews.json
  def create
    @permissionview = Permissionview.new(permissionview_params)

    respond_to do |format|
      if @permissionview.save
        format.html { redirect_to @permissionview, notice: 'Permissionview was successfully created.' }
        format.json { render :show, status: :created, location: @permissionview }
      else
        format.html { render :new }
        format.json { render json: @permissionview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permissionviews/1
  # PATCH/PUT /permissionviews/1.json
  def update
    respond_to do |format|
      if @permissionview.update(permissionview_params)
        format.html { redirect_to @permissionview, notice: 'Permissionview was successfully updated.' }
        format.json { render :show, status: :ok, location: @permissionview }
      else
        format.html { render :edit }
        format.json { render json: @permissionview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permissionviews/1
  # DELETE /permissionviews/1.json
  def destroy
    @permissionview.destroy
    respond_to do |format|
      format.html { redirect_to permissionviews_url, notice: 'Permissionview was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permissionview
      @permissionview = Permissionview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permissionview_params
      params.require(:permissionview).permit(:permission_id, :viewmenu_id)
    end
end
