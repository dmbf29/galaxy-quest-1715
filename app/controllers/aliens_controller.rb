class AliensController < ApplicationController
  def new
    @planet = Planet.find(params[:planet_id])
    @alien = Alien.new
  end

  def create
    @planet = Planet.find(params[:planet_id])
    @alien = Alien.new(alien_params)
    @alien.planet = @planet
    if @alien.save
      redirect_to planet_path(@alien.planet)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @alien = Alien.find(params[:id])
    @alien.destroy
    redirect_to planet_path(@alien.planet)
  end

  private

  def alien_params
    params.require(:alien).permit(:name, :photo)
  end
end
