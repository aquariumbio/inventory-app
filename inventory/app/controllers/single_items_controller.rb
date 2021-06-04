class SingleItemsController < ApplicationController
  before_action :set_single_item, only: %i[ show edit update destroy ]

  # GET /single_items or /single_items.json
  def index
    @single_items = SingleItem.all
  end

  # GET /single_items/1 or /single_items/1.json
  def show
  end

  # GET /single_items/new
  def new
    @single_item = SingleItem.new
  end

  # GET /single_items/1/edit
  def edit
  end

  # POST /single_items or /single_items.json
  def create
    @single_item = SingleItem.new(single_item_params)

    respond_to do |format|
      if @single_item.save
        format.html { redirect_to @single_item, notice: "Single item was successfully created." }
        format.json { render :show, status: :created, location: @single_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @single_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /single_items/1 or /single_items/1.json
  def update
    respond_to do |format|
      if @single_item.update(single_item_params)
        format.html { redirect_to @single_item, notice: "Single item was successfully updated." }
        format.json { render :show, status: :ok, location: @single_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @single_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /single_items/1 or /single_items/1.json
  def destroy
    @single_item.destroy
    respond_to do |format|
      format.html { redirect_to single_items_url, notice: "Single item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_single_item
      @single_item = SingleItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def single_item_params
      params.require(:single_item).permit(:sample_id)
    end
end
