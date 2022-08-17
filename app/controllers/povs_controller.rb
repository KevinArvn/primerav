class PovsController < ApplicationController
  before_action :set_pov, only: %i[ show edit update destroy ]

  # GET /povs or /povs.json
  def index
    @povs = Pov.all
  end

  # GET /povs/1 or /povs/1.json
  def show
  end

  # GET /povs/new
  def new
    @pov = Pov.new
  end

  # GET /povs/1/edit
  def edit
  end

  # POST /povs or /povs.json
  def create
    @pov = Pov.new(pov_params)

    respond_to do |format|
      if @pov.save
        format.html { redirect_to pov_url(@pov), notice: "Pov was successfully created." }
        format.json { render :show, status: :created, location: @pov }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pov.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /povs/1 or /povs/1.json
  def update
    respond_to do |format|
      if @pov.update(pov_params)
        format.html { redirect_to pov_url(@pov), notice: "Pov was successfully updated." }
        format.json { render :show, status: :ok, location: @pov }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pov.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /povs/1 or /povs/1.json
  def destroy
    @pov.destroy

    respond_to do |format|
      format.html { redirect_to povs_url, notice: "Pov was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pov
      @pov = Pov.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pov_params
      params.require(:pov).permit(:title, :author, :publication_year)
    end
end
