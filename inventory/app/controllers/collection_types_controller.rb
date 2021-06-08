class CollectionTypesController < ApplicationController
  before_action :set_collection_type, only: %i[ show edit update destroy ]

  # GET /collection_types or /collection_types.json
  def index
    @collection_types = CollectionType.all
  end

  # GET /collection_types/1 or /collection_types/1.json
  def show
  end

  # GET /collection_types/new
  def new
    @collection_type = CollectionType.new
  end

  # GET /collection_types/1/edit
  def edit
  end

  # POST /collection_types or /collection_types.json
  def create
    @collection_type = CollectionType.new(collection_type_params)

    respond_to do |format|
      if @collection_type.save
        format.html { redirect_to @collection_type, notice: "Collection type was successfully created." }
        format.json { render :show, status: :created, location: @collection_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @collection_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collection_types/1 or /collection_types/1.json
  def update
    respond_to do |format|
      if @collection_type.update(collection_type_params)
        format.html { redirect_to @collection_type, notice: "Collection type was successfully updated." }
        format.json { render :show, status: :ok, location: @collection_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @collection_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collection_types/1 or /collection_types/1.json
  def destroy
    @collection_type.destroy
    respond_to do |format|
      format.html { redirect_to collection_types_url, notice: "Collection type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collection_type
      @collection_type = CollectionType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collection_type_params
      params.require(:collection_type).permit(:name, :description, :rows, :columns)
    end
end
