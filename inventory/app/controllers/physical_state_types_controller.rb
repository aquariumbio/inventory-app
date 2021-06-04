class PhysicalStateTypesController < ApplicationController
  before_action :set_physical_state_type, only: %i[ show edit update destroy ]

  # GET /physical_state_types or /physical_state_types.json
  def index
    @physical_state_types = PhysicalStateType.all
  end

  # GET /physical_state_types/1 or /physical_state_types/1.json
  def show
  end

  # GET /physical_state_types/new
  def new
    @physical_state_type = PhysicalStateType.new
  end

  # GET /physical_state_types/1/edit
  def edit
  end

  # POST /physical_state_types or /physical_state_types.json
  def create
    @physical_state_type = PhysicalStateType.new(physical_state_type_params)

    respond_to do |format|
      if @physical_state_type.save
        format.html { redirect_to @physical_state_type, notice: "Physical state type was successfully created." }
        format.json { render :show, status: :created, location: @physical_state_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @physical_state_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physical_state_types/1 or /physical_state_types/1.json
  def update
    respond_to do |format|
      if @physical_state_type.update(physical_state_type_params)
        format.html { redirect_to @physical_state_type, notice: "Physical state type was successfully updated." }
        format.json { render :show, status: :ok, location: @physical_state_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @physical_state_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_state_types/1 or /physical_state_types/1.json
  def destroy
    @physical_state_type.destroy
    respond_to do |format|
      format.html { redirect_to physical_state_types_url, notice: "Physical state type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physical_state_type
      @physical_state_type = PhysicalStateType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def physical_state_type_params
      params.require(:physical_state_type).permit(:name)
    end
end
