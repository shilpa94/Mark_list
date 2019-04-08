class SubjectsController < ApplicationController
  def index
    @subject = Subject.all

  def new
   @subject = Subject.new
  end

  def show
    
  end

      
  def create
    @subject = Subject.new(sub_params)

    respond_to do |format|
      if @subject.save
        format.html { redirect_to subjects_path, notice: 'new subject.' }
      else
        format.html { render :new }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def sub_params
      params.require(:subject).permit(:name, :code)
    end
  end
end
