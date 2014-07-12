class CargosController < InheritedResources::Base
	def permitted_params
		params.permit!
	end
end
