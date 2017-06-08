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
      flash[:error] = @rsvp.errors
      redirect_to edit_rsvp_url(@rsvp)
    end
  end

  def destroy
    @rsvp = Rsvp.find(params[:id])
    @rsvp.destroy

    redirect_to rsvps_path
  end

  def find_rsvp
    unless params[:invite_code] == nil
      rsvp = Rsvp.where(invite_code: params[:invite_code]).first
      if rsvp != nil
        print rsvp
        redirect_to rsvp_path(id: rsvp.id)
      else
        flash[:error] = 'Invalid invite code'
        render 'find_rsvp'
      end
    end
  end

  private
    def rsvp_params
      params.require(:rsvp).permit(:names, :attending, :food_choice)
    end
end
