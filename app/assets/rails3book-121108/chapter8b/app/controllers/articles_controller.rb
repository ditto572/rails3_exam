# coding: utf-8

class ArticlesController < ApplicationController
  # 記事一覧
  def index
    @articles = Article.readable_for(@current_member).
                  order("released_at DESC")
  end

  # 記事詳細
  def show
    @article = Article.readable_for(@current_member).
                  find(params[:id])
  end
end
