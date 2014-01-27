class MatieresController < ApplicationController
	respond_to :json
	def index
		if params[:formation_id]
			@resource = Formation.find(params[:formation_id]).matieres
		else
			@resource = Matiere			
		end
		
		@matieres = @resource.paginated(page)
		@count = @resource.count
		respond_with [ @matieres, @count ]
	end
end
