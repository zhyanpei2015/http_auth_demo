module HttpAuth
	def self.included base
		base.instance_eval do
			def http_basic_authenticate_with(options = {}) 
				debugger
				unless session[:cas].nil?
				end
				super
			end
		end
	end
end

ActionController::HttpAuthentication::Basic::ControllerMethods::ClassMethods.send(:include, HttpAuth)
