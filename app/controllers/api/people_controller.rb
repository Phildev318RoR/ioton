class API::PeopleController < ApplicationController
  http_basic_authenticate_with :name => "myIoToN", :password => "ioton123"
  #skip_before_filter :authenticate_people! # we do not need devise authentication here
  before_filter :fetch_people, :except => [:index, :create]
  #skip_before_action :verify_authenticity_token

  #before_action :authenticate


  def fetch_people
    @people = People.find(params[:id])
  end

  def index
    @people = People.all
    respond_to do |format|
      format.json { render :json => @people }
    end
  end

  def show
    #@people = People.find(params[:id])
    respond_to do |format|
      format.json { render :json => @people }
    end
  end

  def create
    #@people = People.new(params[:person])
    @people = People.new(name: params[:name], surname: params[:surname])

    respond_to do |format|
      format.json { render :json => @people }
      if @people.save
        #@people.name = "tester"
        #@people.surname = "baby"
        #@people.save
        format.json { render json: @people, status: :created }
      else
        format.json { render json: @people.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @people.name = params[:name]
    @people.surname = params[:surname]
    respond_to do |format|
      if @people.save
        format.json { head :no_content, status: :ok }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

end