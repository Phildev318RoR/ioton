class IotonserversController < ApplicationController
  before_action :set_iotonserver, only: [:show, :edit, :update, :destroy]

  # GET /iotonservers
  # GET /iotonservers.json
  def index
    @client = Client.find(session[:client_id])
	  @department = Department.find(session[:department_id])
    @site = Site.find(session[:site_id])
    @iotonservers = Iotonserver.all
  end

  # GET /iotonservers/1
  # GET /iotonservers/1.json
  def show
    @client = Client.find(session[:client_id])
	  @department = Department.find(session[:department_id])
    @site = Site.find(session[:site_id])

    #session[:site_id] = @site.id
    #redirect_to sites_path
  end

  # GET /iotonservers/new
  def new
    @client = Client.find(session[:client_id])
	  @department = Department.find(session[:department_id])
    @site = Site.find(session[:site_id])
    @iotonserver = Iotonserver.new
  end

  # GET /iotonservers/1/edit
  def edit
    @client = Client.find(session[:client_id])
	  @department = Department.find(session[:department_id])
    @site = Site.find(session[:site_id])
  end

  # POST /iotonservers
  # POST /iotonservers.json
  def create
    @iotonserver = Iotonserver.new(iotonserver_params)
    @client = Client.find(session[:client_id])
	  @department = Department.find(session[:department_id])
    @site = Site.find(session[:site_id])
    @iotonserver.downloaded = false
    @iotonserver.site_id = @site.id
    respond_to do |format|
      if @iotonserver.save
        format.html { redirect_to @iotonserver, notice: 'Iotonserver was successfully created.' }
        format.json { render :show, status: :created, location: @iotonserver }
      else
        format.html { render :new }
        format.json { render json: @iotonserver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iotonservers/1
  # PATCH/PUT /iotonservers/1.json
  def update
    @client = Client.find(session[:client_id])
	  @department = Department.find(session[:department_id])
    @site = Site.find(session[:site_id])
    @iotonserver.downloaded = false
    @iotonserver.site_id = @site.id
    respond_to do |format|
      if @iotonserver.update(iotonserver_params)
        format.html { redirect_to @iotonserver, notice: 'Iotonserver was successfully updated.' }
        format.json { render :show, status: :ok, location: @iotonserver }
      else
        format.html { render :edit }
        format.json { render json: @iotonserver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iotonservers/1
  # DELETE /iotonservers/1.json
  def destroy
    @iotonserver.destroy
    respond_to do |format|
      format.html { redirect_to iotonservers_url, notice: 'Iotonserver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iotonserver
      @iotonserver = Iotonserver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iotonserver_params
      params.require(:iotonserver).permit(:name, :description, :site_id, :downloaded)
    end
end
