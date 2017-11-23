class WorkspaceController < ApplicationController
	before_action :authenticate_usuario! 	
	load_and_authorize_resource
	layout "workspace"

	def current_ability
	  @current_ability ||= Ability.new(current_usuario)
	end
end
