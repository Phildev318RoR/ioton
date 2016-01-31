require_dependency "iotlogin/application_controller"

module Iotlogin
  class PermissionviewrolesController < ApplicationController
    before_action :set_permissionviewrole, only: [:show, :edit, :update, :destroy]

    # GET /permissionviewroles
    def index
      @permissionviewroles = Permissionviewrole.all
    end

    # GET /permissionviewroles/1
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
    def create
      @permissionviewrole = Permissionviewrole.new(permissionviewrole_params)

      if @permissionviewrole.save
        redirect_to @permissionviewrole, notice: 'Permissionviewrole was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /permissionviewroles/1
    def update
      if @permissionviewrole.update(permissionviewrole_params)
        redirect_to @permissionviewrole, notice: 'Permissionviewrole was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /permissionviewroles/1
    def destroy
      @permissionviewrole.destroy
      redirect_to permissionviewroles_url, notice: 'Permissionviewrole was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_permissionviewrole
        @permissionviewrole = Permissionviewrole.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def permissionviewrole_params
        params.require(:permissionviewrole).permit(:name, :permissionview_id, :role_id)
      end
  end
end
