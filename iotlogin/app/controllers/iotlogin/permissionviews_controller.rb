require_dependency "iotlogin/application_controller"

module Iotlogin
  class PermissionviewsController < ApplicationController
    before_action :set_permissionview, only: [:show, :edit, :update, :destroy]

    # GET /permissionviews
    def index
      @permissionviews = Permissionview.all
    end

    # GET /permissionviews/1
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
    def create
      @permissionview = Permissionview.new(permissionview_params)

      if @permissionview.save
        redirect_to @permissionview, notice: 'Permissionview was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /permissionviews/1
    def update
      if @permissionview.update(permissionview_params)
        redirect_to @permissionview, notice: 'Permissionview was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /permissionviews/1
    def destroy
      @permissionview.destroy
      redirect_to permissionviews_url, notice: 'Permissionview was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_permissionview
        @permissionview = Permissionview.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def permissionview_params
        params.require(:permissionview).permit(:name, :permission_id, :viewmenu_id)
      end
  end
end
