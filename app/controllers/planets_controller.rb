class PlanetsController < ApplicationController
  def show
    @planet = Planet.find(params[:id])
    @alien = Alien.new
  end
end
