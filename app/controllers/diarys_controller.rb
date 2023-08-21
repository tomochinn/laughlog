class DiarysController < ApplicationController
  
  def index
    @diarys = Diary.all
  end

  def new
    @diary = Diary.new
  end
  
  def create
    @diary = Diary.new(diary_params)
    
    if @diary.save
      redirect_to diary_path(@diary.id)
    else
      render :new
    end
  end
  
  def show
    @diary = Diary.find(params[:id])
  end
  
  def edit
    @diary = Diary.find(params[:id])
  end
  
  def update
    @diary = Diary.find(params[:id])
    
    if @diary.update(diary_params)
      redirect_to diary_path(@diary.id)
    else
      render :edit
    end
  end

  
  def destroy
    @diary = Diary.find(params[:id])
    @diary.destroy
    redirect_to diarys_path
  end
  
  private
  def diary_params
    params.require(:diary).permit(:body)
  end
  
end
