class EmpolyeesController < ApplicationController
  before_action :set_empolyee, only: %i[ show edit update destroy ]

  # GET /empolyees or /empolyees.json
  def index
    @empolyees = Empolyee.all
  end

  # GET /empolyees/1 or /empolyees/1.json
  def show
  end

  # GET /empolyees/new
  def new
    @empolyee = Empolyee.new
  end

  # GET /empolyees/1/edit
  def edit
  end

  # POST /empolyees or /empolyees.json
  def create
    @empolyee = Empolyee.new(empolyee_params)

    respond_to do |format|
      if @empolyee.save
        format.html { redirect_to @empolyee, notice: "Empolyee was successfully created." }
        format.json { render :show, status: :created, location: @empolyee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @empolyee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empolyees/1 or /empolyees/1.json
  def update
    respond_to do |format|
      if @empolyee.update(empolyee_params)
        format.html { redirect_to @empolyee, notice: "Empolyee was successfully updated." }
        format.json { render :show, status: :ok, location: @empolyee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @empolyee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empolyees/1 or /empolyees/1.json
  def destroy
    @empolyee.destroy
    respond_to do |format|
      format.html { redirect_to empolyees_url, notice: "Empolyee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empolyee
      @empolyee = Empolyee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def empolyee_params
      params.require(:empolyee).permit(:first_name, :last_name, :age, :Gender, :designation)
    end
end
