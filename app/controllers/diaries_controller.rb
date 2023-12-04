class DiariesController < ApplicationController

  def index
    @q = Diary.ransack(params[:q])
    @diaries = @q.result
  end
end
