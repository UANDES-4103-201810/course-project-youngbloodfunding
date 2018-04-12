class CreatedProjectsController < ApplicationController
  before_action :set_created_project, only: [:show, :edit, :update, :destroy]

  # GET /created_projects
  # GET /created_projects.json
  def index
    @created_projects = CreatedProject.all
  end

  # GET /created_projects/1
  # GET /created_projects/1.json
  def show
  end

  # GET /created_projects/new
  def new
    @created_project = CreatedProject.new
  end

  # GET /created_projects/1/edit
  def edit
  end

  # POST /created_projects
  # POST /created_projects.json
  def create
    @created_project = CreatedProject.new(created_project_params)

    respond_to do |format|
      if @created_project.save
        format.html { redirect_to @created_project, notice: 'Created project was successfully created.' }
        format.json { render :show, status: :created, location: @created_project }
      else
        format.html { render :new }
        format.json { render json: @created_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /created_projects/1
  # PATCH/PUT /created_projects/1.json
  def update
    respond_to do |format|
      if @created_project.update(created_project_params)
        format.html { redirect_to @created_project, notice: 'Created project was successfully updated.' }
        format.json { render :show, status: :ok, location: @created_project }
      else
        format.html { render :edit }
        format.json { render json: @created_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /created_projects/1
  # DELETE /created_projects/1.json
  def destroy
    @created_project.destroy
    respond_to do |format|
      format.html { redirect_to created_projects_url, notice: 'Created project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_created_project
      @created_project = CreatedProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def created_project_params
      params.fetch(:created_project, {})
    end
end
