class PhysicalStatesController < ApplicationController
  before_action :set_physical_state, only: %i[ show edit update destroy ]

  # GET /physical_states or /physical_states.json
  def index
    @physical_states = PhysicalState.all
  end

  # GET /physical_states/1 or /physical_states/1.json
  def show
  end

  # GET /physical_states/new
  def new
    @physical_state = PhysicalState.new
  end

  # GET /physical_states/1/edit
  def edit
  end

  # POST /physical_states or /physical_states.json
  def create
    @physical_state = PhysicalState.new(physical_state_params)

    respond_to do |format|
      if @physical_state.save
        format.html { redirect_to @physical_state, notice: "Physical state was successfully created." }
        format.json { render :show, status: :created, location: @physical_state }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @physical_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physical_states/1 or /physical_states/1.json
  def update
    respond_to do |format|
      if @physical_state.update(physical_state_params)
        format.html { redirect_to @physical_state, notice: "Physical state was successfully updated." }
        format.json { render :show, status: :ok, location: @physical_state }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @physical_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_states/1 or /physical_states/1.json
  def destroy
    @physical_state.destroy
    respond_to do |format|
      format.html { redirect_to physical_states_url, notice: "Physical state was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physical_state
      @physical_state = PhysicalState.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def physical_state_params
      params.require(:physical_state).permit(:name, :description)
    end
end
