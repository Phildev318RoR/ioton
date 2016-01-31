require_dependency "iotlogin/application_controller"

module Iotlogin
  class ViewmenusController < ApplicationController
    before_action :set_viewmenu, only: [:show, :edit, :update, :destroy]

    # GET /viewmenus
    def index
      @viewmenus = Viewmenu.all
    end

    # GET /viewmenus/1
    def show
    end

    # GET /viewmenus/new
    def new
      @viewmenu = Viewmenu.new
    end

    # GET /viewmenus/1/edit
    def edit
    end

    # POST /viewmenus
    def create
      @viewmenu = Viewmenu.new(viewmenu_params)

      if @viewmenu.save
        redirect_to @viewmenu, notice: 'Viewmenu was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /viewmenus/1
    def update
      if @viewmenu.update(viewmenu_params)
        redirect_to @viewmenu, notice: 'Viewmenu was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /viewmenus/1
    def destroy
      @viewmenu.destroy
      redirect_to viewmenus_url, notice: 'Viewmenu was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_viewmenu
        @viewmenu = Viewmenu.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def viewmenu_params
        params.require(:viewmenu).permit(:name, :description)
      end
  end
end
