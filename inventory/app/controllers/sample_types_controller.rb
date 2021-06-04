class SampleTypesController < ApplicationController
  before_action :set_sample_type, only: %i[ show edit update destroy ]

  # GET /sample_types or /sample_types.json
  def index
    @sample_types = SampleType.all
  end

  # GET /sample_types/1 or /sample_types/1.json
  def show
  end

  # GET /sample_types/new
  def new
    @sample_type = SampleType.new
  end

  # GET /sample_types/1/edit
  def edit
  end

  # POST /sample_types or /sample_types.json
  def create
    @sample_type = SampleType.new(sample_type_params)

    respond_to do |format|
      if @sample_type.save
        format.html { redirect_to @sample_type, notice: "Sample type was successfully created." }
        format.json { render :show, status: :created, location: @sample_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sample_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_types/1 or /sample_types/1.json
  def update
    respond_to do |format|
      if @sample_type.update(sample_type_params)
        format.html { redirect_to @sample_type, notice: "Sample type was successfully updated." }
        format.json { render :show, status: :ok, location: @sample_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sample_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_types/1 or /sample_types/1.json
  def destroy
    @sample_type.destroy
    respond_to do |format|
      format.html { redirect_to sample_types_url, notice: "Sample type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_type
      @sample_type = SampleType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sample_type_params
      params.require(:sample_type).permit(:name, :description)
    end
end
