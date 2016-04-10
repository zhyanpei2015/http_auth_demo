#require_relative "../auth/http_auth"

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	#include HttpAuth
	#http_basic_authenticate_with :name => "1zhangyanpei", :password => "123456"
end
