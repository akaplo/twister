class HomeController < ApplicationController
  def index
    puts 'index'
    puts params
  end
  def find_rsvp
    puts 'poopy'
    puts params[:rsvp]
    rsvp = Rsvp.where(invite_code: params[:rsvp]).first
    if rsvp != nil
      print rsvp
      redirect_to rsvp_path(id: rsvp.id)
    else
      flash[:error] = 'Invalid invite code'
      render 'index'
    end
  end
  def show
  end
  def create
    print params
  end
end
