# frozen_string_literal: true

class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show(id)
    @tag = Tag.find(id)
  end
end
