class WorkspaceController < ApplicationController
	before_action :authenticate_usuario!
	layout "workspace"
end
