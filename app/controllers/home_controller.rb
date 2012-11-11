class HomeController < ApplicationController
	before_filter :authenticate_user!, :except => [:index, :search]
	
  def index
  	@users = User.all
  end
  
  def search
    @users = User.search(params[:search]) if params[:search]
  	#render :partial => "search_results", :locals => {:users => @users }, :layout => false
  end

end
