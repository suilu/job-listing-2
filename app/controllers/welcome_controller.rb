class WelcomeController < ApplicationController
  def index
    flash[:notice] = "早上好哟，我是猫小酷🐱"
  end
end
