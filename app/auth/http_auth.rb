module HttpAuth
	def self.included base
		base.instance_eval do
			def http_basic_authenticate_with(options = {}) 
				before_action(options.except(:name, :password, :realm)) do
					unless session[:cas].nil?
						request.headers[:authorization] = ActionController::HttpAuthentication::Basic.encode_credentials(options[:name], options[:password])
					end
					authenticate_or_request_with_http_basic(options[:realm] || "Application") do |name, password|
						name == options[:name] && password == options[:password]
					end
				end
			end
		end
	end
end

ActionController::HttpAuthentication::Basic::ControllerMethods::ClassMethods.send(:include, HttpAuth)
