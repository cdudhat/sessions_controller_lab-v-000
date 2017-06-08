class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to root_path
  end
end
