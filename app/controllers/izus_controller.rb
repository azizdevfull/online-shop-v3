class IzusController < ApplicationController
  before_action :set_izu, only: %i[ show edit update destroy ]

  # GET /izus or /izus.json
  def index
    @izus = Izu.all
  end

  # GET /izus/1 or /izus/1.json
  def show
  end

  # GET /izus/new
  def new
    @izu = Izu.new
  end

  # GET /izus/1/edit
  def edit
  end

  # POST /izus or /izus.json
  def create
    @izu = Izu.new(izu_params)

    respond_to do |format|
      if @izu.save
        format.html { redirect_to izu_url(@izu), notice: "Izu was successfully created." }
        format.json { render :show, status: :created, location: @izu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @izu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /izus/1 or /izus/1.json
  def update
    respond_to do |format|
      if @izu.update(izu_params)
        format.html { redirect_to izu_url(@izu), notice: "Izu was successfully updated." }
        format.json { render :show, status: :ok, location: @izu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @izu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /izus/1 or /izus/1.json
  def destroy
    @izu.destroy

    respond_to do |format|
      format.html { redirect_to izus_url, notice: "Izu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_izu
      @izu = Izu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def izu_params
      params.require(:izu).permit(:name, :description)
    end
end
