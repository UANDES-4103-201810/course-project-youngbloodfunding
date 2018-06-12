class BackedProjectsController < ApplicationController
  before_action :set_backed_project, only: [:show, :edit, :update, :destroy]

  # GET /backed_projects
  # GET /backed_projects.json
  def index
    @backed_projects = BackedProject.all
  end

  # GET /backed_projects/1
  # GET /backed_projects/1.json
  def show
  end

  # GET /backed_projects/new
  def new
    @backed_project = BackedProject.new
  end

  # GET /backed_projects/1/edit
  def edit
  end

  # POST /backed_projects
  # POST /backed_projects.json
  def create
    @backed_project = BackedProject.create(backed_project_params)

    respond_to do |format|
      if @backed_project.save
        format.html { redirect_to @backed_project, notice: 'You Backed the project succesfully.' }
        format.json { render :show, status: :created, location: @backed_project }
      else
        format.html { render :new }
        format.json { render json: @backed_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backed_projects/1
  # PATCH/PUT /backed_projects/1.json
  def update
    respond_to do |format|
      if @backed_project.update(backed_project_params)
        format.html { redirect_to @backed_project, notice: 'You Backed the project succesfully.' }
        format.json { render :show, status: :ok, location: @backed_project }
      else
        format.html { render :edit }
        format.json { render json: @backed_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backed_projects/1
  # DELETE /backed_projects/1.json
  def destroy
    @backed_project.destroy
    respond_to do |format|
      format.html { redirect_to backed_projects_url, notice: 'Backed project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backed_project
      @backed_project = BackedProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def backed_project_params
      params.require(:backed_project).permit(:user_id, :project_id, :amount, :promise_id, :bank_account_id)
    end
end
