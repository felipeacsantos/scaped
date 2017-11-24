class ApplicationController < ActionController::Base
	def signed_in_root_path(resource)
		testedefinicaos_path
	end
end
