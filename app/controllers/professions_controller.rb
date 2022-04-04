  class ProfessionsController < ApplicationController
    def index
      @professions = Profession.all
    end

    def show
      @profession = Profession.find(params[:id])
    end

    def new
      @profession = Profession.new
    end

    def create
      @profession = Profession.new(profession_params)

      if @profession.save
        redirect_to @profession
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
      @profession = Profession.find(params[:id])
    end

    def update
      @profession = Profession.find(params[:id])

      if @profession.update(profession_params)
        redirect_to @profession
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @profession = Profession.find(params[:id])
      @profession.destroy

      redirect_to root_path, status: :see_other
    end

    private
    def profession_params
      params.require(:profession).permit(:name)
    end
  end
