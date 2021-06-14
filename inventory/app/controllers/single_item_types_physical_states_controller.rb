class SingleItemTypesPhysicalStatesController < ApplicationController
  before_action :set_single_item_types_physical_state, only: %i[ show edit update destroy ]

  # GET /single_item_types_physical_states or /single_item_types_physical_states.json
  def index
    @single_item_types_physical_states = SingleItemTypesPhysicalState.all
  end

  # GET /single_item_types_physical_states/1 or /single_item_types_physical_states/1.json
  def show
  end

  # GET /single_item_types_physical_states/new
  def new
    @single_item_types_physical_state = SingleItemTypesPhysicalState.new
  end

  # GET /single_item_types_physical_states/1/edit
  def edit
  end

  # POST /single_item_types_physical_states or /single_item_types_physical_states.json
  def create
    @single_item_types_physical_state = SingleItemTypesPhysicalState.new(single_item_types_physical_state_params)

    respond_to do |format|
      if @single_item_types_physical_state.save
        format.html { redirect_to @single_item_types_physical_state, notice: "Single item types physical state was successfully created." }
        format.json { render :show, status: :created, location: @single_item_types_physical_state }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @single_item_types_physical_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /single_item_types_physical_states/1 or /single_item_types_physical_states/1.json
  def update
    respond_to do |format|
      if @single_item_types_physical_state.update(single_item_types_physical_state_params)
        format.html { redirect_to @single_item_types_physical_state, notice: "Single item types physical state was successfully updated." }
        format.json { render :show, status: :ok, location: @single_item_types_physical_state }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @single_item_types_physical_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /single_item_types_physical_states/1 or /single_item_types_physical_states/1.json
  def destroy
    @single_item_types_physical_state.destroy
    respond_to do |format|
      format.html { redirect_to single_item_types_physical_states_url, notice: "Single item types physical state was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_single_item_types_physical_state
      @single_item_types_physical_state = SingleItemTypesPhysicalState.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def single_item_types_physical_state_params
      params.require(:single_item_types_physical_state).permit(:single_item_type_id, :physical_state_id)
    end
end
