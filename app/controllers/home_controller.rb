class HomeController < ApplicationController
  def index
  end


  private 
  def find_cart 
  	session[:cart] ||= Cart.new
  end

end
