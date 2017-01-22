class HomeController < ApplicationController
  def index
  	if enter_signed_in?
  		redirect_to posts_path
  	else
  		redirect_to new_enter_session_path	
  	end
  end
end
