# frozen_string_literal: true

class MainController < ApplicationController
  def index
    flash[:notice] = 'Logged in successfully!'
    flash[:alert] = 'Logged in successfully!'
  end
end
