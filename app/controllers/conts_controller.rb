class ContsController < ApplicationController
  before_action :set_cont, only: %i[ show edit update destroy ]

  # GET /conts or /conts.json
  def index
    @conts = Cont.all
  end

  # GET /conts/1 or /conts/1.json
  def show
  end

  # GET /conts/new
  def new
    @cont = Cont.new
  end

  # GET /conts/1/edit
  def edit
  end

  # POST /conts or /conts.json
  def create
    @cont = Cont.new(cont_params)

    respond_to do |format|
      if @cont.save
        format.html { redirect_to cont_url(@cont), notice: "Cont was successfully created." }
        format.json { render :show, status: :created, location: @cont }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cont.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conts/1 or /conts/1.json
  def update
    respond_to do |format|
      if @cont.update(cont_params)
        format.html { redirect_to cont_url(@cont), notice: "Cont was successfully updated." }
        format.json { render :show, status: :ok, location: @cont }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cont.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conts/1 or /conts/1.json
  def destroy
    @cont.destroy

    respond_to do |format|
      format.html { redirect_to conts_url, notice: "Cont was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cont
      @cont = Cont.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cont_params
      params.require(:cont).permit(:frist_name, :last_name, :email, :number)
    end
end
