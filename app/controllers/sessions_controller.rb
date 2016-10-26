class SessionsController < ApplicationController

  def new

  end

#fix here!!!
  def create
    if params[:name].nil?
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/sessions/new'
    end

  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

  private
  def current_user
    session[:name] ||= nil
  end

end
