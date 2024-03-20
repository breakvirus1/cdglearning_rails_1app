class LabsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  # GET /labs or /labs.json
  def index
    @labs = Lab.all
  end

  # GET /labs/1 or /labs/1.json
  def show

  end

  # GET /labs/new
  def new
    @lab = Lab.new
  end

  # GET /labs/1/edit
  def edit
  end

  # POST /labs or /labs.json
  def create
    @lab = Lab.new(lab_params)


    respond_to do |format|
      if @lab.save
        format.html { redirect_to lab_url(@lab), notice: "Лаба создана." }
        format.json { render :show, status: :created, location: @lab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /labs/1 or /labs/1.json
  def update
    respond_to do |format|
      if @lab.update(lab_params)
        format.html { redirect_to lab_url(@lab), notice: "Лаба обновлена." }
        format.json { render :show, status: :ok, location: @lab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /labs/1 or /labs/1.json
  def destroy
    @lab.destroy!

    respond_to do |format|
      format.html { redirect_to labs_url, notice: "Лаба удалена." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab
      @lab = Lab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lab_params
      params.require(:lab).permit(:title, :body, :ocenka)
    end
end
