class PaintersController < ApplicationController
  before_action :set_painter, only: [:show, :edit, :update, :destroy]

  # GET /painters
  # GET /painters.json
  def index
    @painters = Painter.all
  end

  # GET /painters/1
  # GET /painters/1.json
  def show
  end

  # GET /painters/new
  def new
    @painter = Painter.new
  end

  # GET /painters/1/edit
  def edit
  end

  # POST /painters
  # POST /painters.json
  def create
    @painter = Painter.new(painter_params)

    respond_to do |format|
      if @painter.save
        format.html { redirect_to @painter, notice: 'Painter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @painter }
      else
        format.html { render action: 'new' }
        format.json { render json: @painter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /painters/1
  # PATCH/PUT /painters/1.json
  def update
    respond_to do |format|
      if @painter.update(painter_params)
        format.html { redirect_to @painter, notice: 'Painter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @painter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /painters/1
  # DELETE /painters/1.json
  def destroy
    @painter.destroy
    respond_to do |format|
      format.html { redirect_to painters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_painter
      @painter = Painter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def painter_params
      params.require(:painter).permit(:name, :surname, :nickname, :nationality)
    end
end
