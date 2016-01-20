class SitesController < ApplicationController
  #before_action :set_Sites, only: [:edit, :update, :show, :destroy]
  def new
	  @department = Departments.find(session[:department_id])
    @site = Sites.new
  end

  def create
    @site = Sites.new(site_params)
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
	  @departments = Departments.find(session[:department_id])
    @site = Sites.find(params[])
  end

  def edit
	@departments = Departments.find(session[:department_id])
    @site = Sites.find(params[])
  end

  def update
	@departments = Departments.find(session[:department_id])
    @site = Sites.find(params[])
	@site.downloaded = false
    if @site.update(site_params)
      flash[:notice] = "Site was successfully updated"
      redirect_to sites_path
    else
      render 'edit'
    end
  end

  def destroy
    @site = Sites.find(params[])
    @site.destroy
    flash[:notice] = "Site was successfully deleted"
    redirect_to sites_path
  end


  def index
	@departments = Departments.find(session[:department_id])
    @Sites = @departments.Sites
  end


end