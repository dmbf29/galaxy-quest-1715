class MembershipsController < ApplicationController

  def new
    @alien = Alien.find(params[:alien_id])
    @membership = Membership.new
    # @alliances = Alliance.order(name: :asc)
    # @alliances = @alien.alliances
    @alliances = Alliance.where.not(id: @alien.alliances)
  end

  def create
    @alien = Alien.find(params[:alien_id])
    @membership = Membership.new(membership_params)
    @membership.alien = @alien
    if @membership.save
      redirect_to planet_path(@alien.planet)
    else
      @alliances = Alliance.where.not(id: @alien.alliances)
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def membership_params
    params.require(:membership).permit(:alliance_id)
  end
end
