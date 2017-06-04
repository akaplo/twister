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
    @rsvp = Rsvp.new(rsvp_params)
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

  def destroy
    @rsvp = Rsvp.find(params[:id])
    @rsvp.destroy

    redirect_to rsvps_path
  end

  private
    def rsvp_params
      params.require(:rsvp).permit(:names, :attending, :food_choice)
    end
end
