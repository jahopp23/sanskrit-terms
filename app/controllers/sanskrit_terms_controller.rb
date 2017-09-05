class SanskritTermsController < ApplicationController
  before_action :set_sanskrit_term, only: [:show, :edit, :update, :destroy]

  # GET /sanskrit_terms
  # GET /sanskrit_terms.json
  def index
    @sanskrit_terms = SanskritTerm.all
    @sanskrit_terms = SanskritTerm.order('term ASC')
  end

  # GET /sanskrit_terms/1
  # GET /sanskrit_terms/1.json
  def show
  end

  # GET /sanskrit_terms/new
  def new
    @sanskrit_term = SanskritTerm.new
  end

  # GET /sanskrit_terms/1/edit
  def edit
  end

  # POST /sanskrit_terms
  # POST /sanskrit_terms.json
  def create
    @sanskrit_term = SanskritTerm.new(sanskrit_term_params)

    respond_to do |format|
      if @sanskrit_term.save
        format.html { redirect_to @sanskrit_term, notice: 'Sanskrit term was successfully created.' }
        format.json { render :show, status: :created, location: @sanskrit_term }
      else
        format.html { render :new }
        format.json { render json: @sanskrit_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sanskrit_terms/1
  # PATCH/PUT /sanskrit_terms/1.json
  def update
    respond_to do |format|
      if @sanskrit_term.update(sanskrit_term_params)
        format.html { redirect_to @sanskrit_term, notice: 'Sanskrit term was successfully updated.' }
        format.json { render :show, status: :ok, location: @sanskrit_term }
      else
        format.html { render :edit }
        format.json { render json: @sanskrit_term.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sanskrit_terms/1
  # DELETE /sanskrit_terms/1.json
  def destroy
    @sanskrit_term.destroy
    respond_to do |format|
      format.html { redirect_to sanskrit_terms_url, notice: 'Sanskrit term was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sanskrit_term
      @sanskrit_term = SanskritTerm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sanskrit_term_params
      params.require(:sanskrit_term).permit(:term, :definition)
    end
end
