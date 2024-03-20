class NubdSuggestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_nubd_suggestion, only: %i[ show edit update destroy ]

  # GET /nubd_suggestions or /nubd_suggestions.json
  def index
    @nubd_suggestions = NubdSuggestion.all
  end

  # GET /nubd_suggestions/1 or /nubd_suggestions/1.json
  def show
  end

  # GET /nubd_suggestions/new
  def new
    @nubd_suggestion = NubdSuggestion.new
  end

  # GET /nubd_suggestions/1/edit
  def edit
  end

  # POST /nubd_suggestions or /nubd_suggestions.json
  def create
    @nubd_suggestion = NubdSuggestion.new(nubd_suggestion_params)

    respond_to do |format|
      if @nubd_suggestion.save
        format.html { redirect_to nubd_suggestion_url(@nubd_suggestion), notice: "Nubd suggestion was successfully created." }
        format.json { render :show, status: :created, location: @nubd_suggestion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nubd_suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nubd_suggestions/1 or /nubd_suggestions/1.json
  def update
    respond_to do |format|
      if @nubd_suggestion.update(nubd_suggestion_params)
        format.html { redirect_to nubd_suggestion_url(@nubd_suggestion), notice: "Nubd suggestion was successfully updated." }
        format.json { render :show, status: :ok, location: @nubd_suggestion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nubd_suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nubd_suggestions/1 or /nubd_suggestions/1.json
  def destroy
    @nubd_suggestion.destroy!

    respond_to do |format|
      format.html { redirect_to nubd_suggestions_url, notice: "Nubd suggestion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nubd_suggestion
      @nubd_suggestion = NubdSuggestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nubd_suggestion_params
      params.require(:nubd_suggestion).permit(:department_id, :subject_id, :year, :free_pdf, :paid_pdf)
    end
end
