class WelcomesController < ApplicationController
  # GET /welcomes
  # GET /welcomes.json
  def index
  end

  # GET /welcomes/1
  # GET /welcomes/1.json
  def show
	end

	def logout
		session[:cas] = nil unless session[:cas].nil?
	end
end
