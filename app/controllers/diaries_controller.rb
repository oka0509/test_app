# frozen_string_literal: true

class DiariesController < ApplicationController
  before_action :require_login, only: [:create]

  def index(q: nil, page: nil)
    @diary = Diary.new
    @q = Diary.ransack(q)
    @diaries = @q.result.order(created_at: :desc).page(page)
  end

  def show(id)
    @diary = Diary.find(id)
  end

  def create(diary)
    @diary = Diary.new(diary.permit(:content, tag_ids: []))
    @diary.user_id = current_user.id
    if @diary.valid?
      @diary.save!
      flash[:success] = t('diary_created')
    else
      flash[:danger] = t('diary_create_failed')
    end
    redirect_to root_path
  end
end
