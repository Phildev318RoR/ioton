class ViewmenusController < ApplicationController
  before_action :set_viewmenu, only: [:show, :edit, :update, :destroy]

  # GET /viewmenus
  # GET /viewmenus.json
  def index
    @viewmenus = Viewmenu.all
  end

  # GET /viewmenus/1
  # GET /viewmenus/1.json
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
  # POST /viewmenus.json
  def create
    @viewmenu = Viewmenu.new(viewmenu_params)

    respond_to do |format|
      if @viewmenu.save
        format.html { redirect_to @viewmenu, notice: 'Viewmenu was successfully created.' }
        format.json { render :show, status: :created, location: @viewmenu }
      else
        format.html { render :new }
        format.json { render json: @viewmenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /viewmenus/1
  # PATCH/PUT /viewmenus/1.json
  def update
    respond_to do |format|
      if @viewmenu.update(viewmenu_params)
        format.html { redirect_to @viewmenu, notice: 'Viewmenu was successfully updated.' }
        format.json { render :show, status: :ok, location: @viewmenu }
      else
        format.html { render :edit }
        format.json { render json: @viewmenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viewmenus/1
  # DELETE /viewmenus/1.json
  def destroy
    @viewmenu.destroy
    respond_to do |format|
      format.html { redirect_to viewmenus_url, notice: 'Viewmenu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viewmenu
      @viewmenu = Viewmenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def viewmenu_params
      params.require(:viewmenu).permit(:name, :description)
    end
end
