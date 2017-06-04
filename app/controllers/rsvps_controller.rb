class RsvpsController < ApplicationController
  def index
    @rsvps = Rsvp.all
  end

  def show
    @rsvp = Rsvp.find(params[:id])
  end

  def new
    @rsvp = Rsvp.new
  end

  def edit
    @rsvp = Rsvp.find(params[:id])
  end

  def create
    @rsvp = Rsvp.new(rsvps_params)
    if @rsvp.save
      redirect_to @rsvp
    else
      render 'new'
    end
  end

  def update
    @rsvp = Rsvp.find(params[:id])

    if @rsvp.update(rsvp_params)
      redirect_to @rsvp
    else
      render 'edit'
    end
  end

  private
    def rsvps_params
      params.require(:rsvps).permit(:names, :attending, :food_choice)
    end
    def rsvp_params
      params.require(:rsvp).permit(:names, :attending, :food_choice)
    end
end
