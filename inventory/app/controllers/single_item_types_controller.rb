class SingleItemTypesController < ApplicationController
  before_action :set_single_item_type, only: %i[ show edit update destroy ]

  # GET /single_item_types or /single_item_types.json
  def index
    @single_item_types = SingleItemType.all
  end

  # GET /single_item_types/1 or /single_item_types/1.json
  def show
  end

  # GET /single_item_types/new
  def new
    @single_item_type = SingleItemType.new
  end

  # GET /single_item_types/1/edit
  def edit
  end

  # POST /single_item_types or /single_item_types.json
  def create
    @single_item_type = SingleItemType.new(single_item_type_params)

    respond_to do |format|
      if @single_item_type.save
        format.html { redirect_to @single_item_type, notice: "Single item type was successfully created." }
        format.json { render :show, status: :created, location: @single_item_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @single_item_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /single_item_types/1 or /single_item_types/1.json
  def update
    respond_to do |format|
      if @single_item_type.update(single_item_type_params)
        format.html { redirect_to @single_item_type, notice: "Single item type was successfully updated." }
        format.json { render :show, status: :ok, location: @single_item_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @single_item_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /single_item_types/1 or /single_item_types/1.json
  def destroy
    @single_item_type.destroy
    respond_to do |format|
      format.html { redirect_to single_item_types_url, notice: "Single item type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_single_item_type
      @single_item_type = SingleItemType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def single_item_type_params
      params.require(:single_item_type).permit(:physical_state_type_id, :sample_type_id)
    end
end
