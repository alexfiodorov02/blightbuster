class ReportsController < ApplicationController
  # GET /reports
  def index
    @reports = Report.all
  end

  # GET /reports/:id
  def show
    @report = Report.find(params[:id])
  end

  # GET /reports/new
  def new
    @report = Report.new
  end

  # POST /reports
  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to @report, notice: "Report was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /reports/:id/edit
  def edit
    @report = Report.find(params[:id])
  end

  # PATCH/PUT /reports/:id
  def update
    @report = Report.find(params[:id])
    if @report.update(report_params)
      redirect_to @report, notice: "Report was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /reports/:id
  def destroy
    @report = Report.find(params[:id])
    @report.destroy
    redirect_to reports_url, notice: "Report was successfully destroyed."
  end

  private

  # Only allow a list of trusted parameters through.
  def report_params
    params.require(:report).permit(:email, :location, :description, :photo, :status)
  end
end
