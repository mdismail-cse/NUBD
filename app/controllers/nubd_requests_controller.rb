class NubdRequestsController < ApplicationController
  before_action :set_nubd_request, only: %i[ show edit update destroy ]

  # GET /nubd_requests or /nubd_requests.json
  def index
    @nubd_requests = NubdRequest.all
  end

  # GET /nubd_requests/1 or /nubd_requests/1.json
  def show
  end

  # GET /nubd_requests/new
  def new
    @nubd_request = NubdRequest.new
  end

  # GET /nubd_requests/1/edit
  def edit
  end

  # POST /nubd_requests or /nubd_requests.json
  def create
    @nubd_request = NubdRequest.new(nubd_request_params)

    respond_to do |format|
      if @nubd_request.save
        format.html { redirect_to nubd_request_url(@nubd_request), notice: "NUBD request created." }
        format.json { render :show, status: :created, location: @nubd_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nubd_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nubd_requests/1 or /nubd_requests/1.json
  def update
    respond_to do |format|
      if @nubd_request.update(nubd_request_params)
        format.html { redirect_to nubd_request_url(@nubd_request), notice: "NUBD request updated." }
        format.json { render :show, status: :ok, location: @nubd_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nubd_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nubd_requests/1 or /nubd_requests/1.json
  def destroy
    @nubd_request.destroy!

    respond_to do |format|
      format.html { redirect_to nubd_requests_url, notice: "NUBD request deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nubd_request
      @nubd_request = NubdRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nubd_request_params
      params.require(:nubd_request).permit(:name, :email, :mobile, :department_id, :subject_id, :session_year, :is_active, :txt_id)
    end
end
