class TipoProduto4sController < ApplicationController
  before_action :set_tipo_produto_4, only: %i[ show edit update destroy ]

  # GET /tipo_produto_4s or /tipo_produto_4s.json
  def index
    @tipo_produto_4s = TipoProduto4.all
  end

  # GET /tipo_produto_4s/1 or /tipo_produto_4s/1.json
  def show
  end

  # GET /tipo_produto_4s/new
  def new
    @tipo_produto_4 = TipoProduto4.new
  end

  # GET /tipo_produto_4s/1/edit
  def edit
  end

  # POST /tipo_produto_4s or /tipo_produto_4s.json
  def create
    @tipo_produto_4 = TipoProduto4.new(tipo_produto_4_params)

    respond_to do |format|
      if @tipo_produto_4.save
        format.html { redirect_to tipo_produto_4_url(@tipo_produto_4), notice: "Tipo produto 4 was successfully created." }
        format.json { render :show, status: :created, location: @tipo_produto_4 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_produto_4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_produto_4s/1 or /tipo_produto_4s/1.json
  def update
    respond_to do |format|
      if @tipo_produto_4.update(tipo_produto_4_params)
        format.html { redirect_to tipo_produto_4_url(@tipo_produto_4), notice: "Tipo produto 4 was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_produto_4 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_produto_4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_produto_4s/1 or /tipo_produto_4s/1.json
  def destroy
    @tipo_produto_4.destroy

    respond_to do |format|
      format.html { redirect_to tipo_produto_4s_url, notice: "Tipo produto 4 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_produto_4
      @tipo_produto_4 = TipoProduto4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_produto_4_params
      params.require(:tipo_produto_4).permit(:nome)
    end
end
