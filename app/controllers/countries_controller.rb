class CountriesController < ApplicationController
 def new
   @countries = Country.new

   respond_to do |format|
     format.html  # new.html.erb
     format.json  { render :json => @countries }
   end
 end

 def create
   @countries = Country.new(country_params)
    if @countries.save
      redirect_to '/staticpages/mychart'
    else
      redirect_to '/countries/new'
    end
 end

  def country_params
    params.require(:country).permit(:country, :visits)
  end
end