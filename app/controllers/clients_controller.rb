class ClientsController < ApplicationController
  #before_action :set_Client, only: [:edit, :update, :show, :destroy]
  def new
    @client = Client.new
  end

  def create
    #render plain: params[:Client].inspect
    @client = Client.new(client_params)
    @client.downloaded = false
    if @client.save
      session[:client_id] = @client.id
      flash[:notice] = "Client was successfully created"
      redirect_to clients_path
    else
      render 'new'
    end
  end

  def client_params
    params.require(:client).permit( :name,  :decription,  :contact_person,  :contact_phone,  :downloaded)
  end

  def show
    @client = Client.find(params[:id])
    session[:client_id] = @client.id
    redirect_to departments_path
  end

  def edit
    @client = Client.find(params[:id])
    session[:client_id] = @client.id
  end

  def update
    @client = Client.find(params[:id])
    @client.downloaded = false
    if @client.update(client_params)
      session[:client_id] = @client.id
      flash[:notice] = "*Client was successfully updated"
      redirect_to clients_path
    else
      render 'edit'
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    session[:client_id] = nill
    flash[:notice] = "*Client was successfully deleted"
    redirect_to client_path
  end


  def index
    @client = Client.all
  end


end