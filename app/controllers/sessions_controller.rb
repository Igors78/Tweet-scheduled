# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    # @session = .new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in'
    else
      flash[:alert] = 'Invalid authentication data'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out'
  end
end
