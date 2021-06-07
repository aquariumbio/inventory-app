class SampleCompositionsController < ApplicationController
  before_action :set_sample_composition, only: %i[ show edit update destroy ]

  # GET /sample_compositions or /sample_compositions.json
  def index
    @grouped_sample_compositions = SampleComposition.all.group_by { |c| c.grouper }
  end

  # GET /sample_compositions/1 or /sample_compositions/1.json
  def show
  end

  # GET /sample_compositions/new
  def new
    @sample_composition = SampleComposition.new
  end

  # GET /sample_compositions/1/edit
  def edit
  end

  # POST /sample_compositions or /sample_compositions.json
  def create
    @sample_composition = SampleComposition.new(sample_composition_params)

    respond_to do |format|
      if @sample_composition.save
        format.html { redirect_to @sample_composition, notice: "Sample composition was successfully created." }
        format.json { render :show, status: :created, location: @sample_composition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sample_composition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_compositions/1 or /sample_compositions/1.json
  def update
    respond_to do |format|
      if @sample_composition.update(sample_composition_params)
        format.html { redirect_to @sample_composition, notice: "Sample composition was successfully updated." }
        format.json { render :show, status: :ok, location: @sample_composition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sample_composition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_compositions/1 or /sample_compositions/1.json
  def destroy
    @sample_composition.destroy
    respond_to do |format|
      format.html { redirect_to sample_compositions_url, notice: "Sample composition was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_composition
      @sample_composition = SampleComposition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sample_composition_params
      params.require(:sample_composition).permit(:quantity, :composite_sample_id, :component_sample_id, :sample_composition_type_id)
    end
end
