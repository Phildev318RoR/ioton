class DepartmentsController < ApplicationController
  #before_action :set_departments, only: [:edit, :update, :show, :destroy]
  def new
    @client = Client.find(session[:client_id])
    @department = Department.new
  end

  def create
    #render plain: params[:departments].inspect
    @department = Department.new(department_params)
    @department.client_id = session[:client_id]
    @department.downloaded = false
    if @department.save
      flash[:notice] = "department was successfully created"
      redirect_to departments_path
    else
      render 'new'
    end
  end

  def department_params
    params.require(:department).permit( :name,  :description,  :downloaded,  :client_id)
  end

  def show
    @client = Client.find(session[:client_id])
    @department = @client.departments
  end

  def edit
    @client = Client.find(session[:client_id])
    @department = Department.find(params[:id])
  end

  def update
    @client = Client.find(session[:client_id])
    @department = Department.find(params[:id])
    @department.downloaded = false
    if @department.update(department_params)
      flash[:notice] = "department was successfully updated"
      redirect_to departments_path
    else
      render 'edit'
    end
  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy
    flash[:notice] = "department was successfully deleted"
    redirect_to departments_path
  end


  def index
    #byebug
    @client = Client.find(session[:client_id])
    @departments = @client.departments
  end


end