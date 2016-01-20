class SitesController < ApplicationController
  #before_action :set_Sites, only: [:edit, :update, :show, :destroy]
  def new
    @client = Client.find(session[:client_id])
	  @department = Department.find(session[:department_id])
    @site = Site.new
  end

  def create
    @site = Site.new(site_params)
	  @site.department_id = session[:department_id]
    @site.downloaded = false
    if @site.save
      flash[:notice] = "Site was successfully created"
      redirect_to sites_path
    else
      render 'new'
    end
  end

  def site_params
    params.require(:site).permit( :id,  :name,  :description,  :contact_person,  :contact_phone,  :address1,  :address2,  :address3,  :downloaded,  :parent_id)
  end

  def show
    @client = Client.find(session[:client_id])
	  @department = Department.find(session[:department_id])
    @site = Site.find(params[:id])
  end

  def edit
    @client = Client.find(session[:client_id])
	  @department = Department.find(session[:department_id])
    @site = Site.find(params[:id])
  end

  def update
	  @department = Department.find(session[:department_id])
    @site = Site.find(params[:id])
	  @site.downloaded = false
    if @site.update(site_params)
      flash[:notice] = "Site was successfully updated"
      redirect_to sites_path
    else
      render 'edit'
    end
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy
    flash[:notice] = "Site was successfully deleted"
    redirect_to sites_path
  end


  def index
    @client = Client.find(session[:client_id])
	  @department = Department.find(session[:department_id])
    @sites = @department.sites
  end


end