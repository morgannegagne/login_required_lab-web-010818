class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if !current_user || current_user.empty?
      redirect_to '/sessions/new'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
