require_dependency "iotlogin/application_controller"

module Iotlogin
  class UserrolesController < ApplicationController
    before_action :set_userrole, only: [:show, :edit, :update, :destroy]

    # GET /userroles
    def index
      @userroles = Userrole.all
    end

    # GET /userroles/1
    def show
    end

    # GET /userroles/new
    def new
      @userrole = Userrole.new
    end

    # GET /userroles/1/edit
    def edit
    end

    # POST /userroles
    def create
      @userrole = Userrole.new(userrole_params)

      if @userrole.save
        redirect_to @userrole, notice: 'Userrole was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /userroles/1
    def update
      if @userrole.update(userrole_params)
        redirect_to @userrole, notice: 'Userrole was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /userroles/1
    def destroy
      @userrole.destroy
      redirect_to userroles_url, notice: 'Userrole was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_userrole
        @userrole = Userrole.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def userrole_params
        params.require(:userrole).permit(:name, :user_id, :role_id)
      end
  end
end
