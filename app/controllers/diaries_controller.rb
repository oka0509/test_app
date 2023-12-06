class DiariesController < ApplicationController

  def index
    @diary = Diary.new
    @q = Diary.ransack(params[:q])
    @diaries = @q.result.order(created_at: :desc).page(params[:page])
  end

  def show
    @diary = Diary.find(params[:id])
  end

  def create
    diary = Diary.new(diary_params)
    diary.user_id = current_user.id
    diary.save! if diary.valid?
    redirect_to root_path
  end

  private

    def diary_params
      params.require(:diary).permit(:content)
    end
end
