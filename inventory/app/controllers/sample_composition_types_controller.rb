class SampleCompositionTypesController < ApplicationController
  before_action :set_sample_composition_type, only: %i[ show edit update destroy ]

  # GET /sample_composition_types or /sample_composition_types.json
  def index
    @sample_composition_types = SampleCompositionType.all
  end

  # GET /sample_composition_types/1 or /sample_composition_types/1.json
  def show
  end

  # GET /sample_composition_types/new
  def new
    @sample_composition_type = SampleCompositionType.new
  end

  # GET /sample_composition_types/1/edit
  def edit
  end

  # POST /sample_composition_types or /sample_composition_types.json
  def create
    @sample_composition_type = SampleCompositionType.new(sample_composition_type_params)

    respond_to do |format|
      if @sample_composition_type.save
        format.html { redirect_to @sample_composition_type, notice: "Sample composition type was successfully created." }
        format.json { render :show, status: :created, location: @sample_composition_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sample_composition_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_composition_types/1 or /sample_composition_types/1.json
  def update
    respond_to do |format|
      if @sample_composition_type.update(sample_composition_type_params)
        format.html { redirect_to @sample_composition_type, notice: "Sample composition type was successfully updated." }
        format.json { render :show, status: :ok, location: @sample_composition_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sample_composition_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_composition_types/1 or /sample_composition_types/1.json
  def destroy
    @sample_composition_type.destroy
    respond_to do |format|
      format.html { redirect_to sample_composition_types_url, notice: "Sample composition type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_composition_type
      @sample_composition_type = SampleCompositionType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sample_composition_type_params
      params.require(:sample_composition_type).permit(:name, :description, :recipe)
    end
end
