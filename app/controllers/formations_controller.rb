class FormationsController < ApplicationController
  respond_to :json
  before_action :set_formation, only: [:show, :update, :destroy]
  
  # GET /formations
  def index
    @formations = Formation.paginated(page)
    respond_with @formations
  end

  # GET /formations/1.json
  def show
    respond_with @formation
  end

  # POST /formations
  def create
    @formation = Formation.new(formation_params)

    if @formation.save
      head :created, location: @formation
      # render action: 'show', status: :created, location: @formation
    else
      render json: @formation.errors, status: :unprocessable_entity
    end
  end
  
  # PATCH/PUT /formations/1.json
  def update
    if @formation.update(formation_params)
      head :no_content
    else
      render json: @formation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formations/1.json
  def destroy
    @formation.destroy
    head :no_content
  end

  private
   def set_formation
     @formation = Formation.find(params[:id])
   end

   def formation_params
     params.require(:formation).permit(:name, :status)
   end
end
