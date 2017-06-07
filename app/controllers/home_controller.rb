class HomeController < ApplicationController
  def index
    puts 'index'
    puts params
  end
  def show
  end
  def create
    print params
  end
end
