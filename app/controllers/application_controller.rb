class ApplicationController < ActionController::Base
	def signed_in_root_path(resource)
		testes_path
	end
end
