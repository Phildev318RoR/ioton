class API::PeopleController < ApplicationController
  http_basic_authenticate_with :name => "myfinance", :password => "credit123"
  
  #before_action :authenticate
  def index
    @people = People.all
    respond_to do |format|
      format.json { render :json => @people }
    end
  end
end