class ReclamosController < InheritedResources::Base
	def permitted_params
		params.permit!
	end
end
