class StaticpagesController < ApplicationController
  def mychart
    @countries = Country.all
  end
end
