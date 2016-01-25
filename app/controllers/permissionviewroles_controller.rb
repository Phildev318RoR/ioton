class PermissionviewrolesController < ApplicationController
  before_action :set_permissionviewrole, only: [:show, :edit, :update, :destroy]

  # GET /permissionviewroles
  # GET /permissionviewroles.json
  def index
    @permissionviewroles = Permissionviewrole.all
  end

  # GET /permissionviewroles/1
  # GET /permissionviewroles/1.json
  def show
  end

  # GET /permissionviewroles/new
  def new
    @permissionviewrole = Permissionviewrole.new
  end

  # GET /permissionviewroles/1/edit
  def edit
  end

  # POST /permissionviewroles
  # POST /permissionviewroles.json
  def create
    @permissionviewrole = Permissionviewrole.new(permissionviewrole_params)

    respond_to do |format|
      if @permissionviewrole.save
        format.html { redirect_to @permissionviewrole, notice: 'Permissionviewrole was successfully created.' }
        format.json { render :show, status: :created, location: @permissionviewrole }
      else
        format.html { render :new }
        format.json { render json: @permissionviewrole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permissionviewroles/1
  # PATCH/PUT /permissionviewroles/1.json
  def update
    respond_to do |format|
      if @permissionviewrole.update(permissionviewrole_params)
        format.html { redirect_to @permissionviewrole, notice: 'Permissionviewrole was successfully updated.' }
        format.json { render :show, status: :ok, location: @permissionviewrole }
      else
        format.html { render :edit }
        format.json { render json: @permissionviewrole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permissionviewroles/1
  # DELETE /permissionviewroles/1.json
  def destroy
    @permissionviewrole.destroy
    respond_to do |format|
      format.html { redirect_to permissionviewroles_url, notice: 'Permissionviewrole was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permissionviewrole
      @permissionviewrole = Permissionviewrole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permissionviewrole_params
      params.require(:permissionviewrole).permit(:permissionview_id, :role_id)
    end
end
