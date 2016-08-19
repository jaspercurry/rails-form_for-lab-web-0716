class SchoolClassesController < ApplicationController

  def new
    @schoolclass = SchoolClass.new
  end

  def create

    @schoolclass = SchoolClass.create(safe_params)
    redirect_to @schoolclass
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])

  end

  def show
    @schoolclass = SchoolClass.find(params[:id])

  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(safe_params)
    redirect_to @schoolclass

  end

  private

  def safe_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
