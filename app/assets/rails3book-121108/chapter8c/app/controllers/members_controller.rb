# coding: utf-8

class MembersController < ApplicationController
  before_filter :login_required
  
  # 会員一覧
  def index
    @members = Member.order("number").
      paginate(page: params[:page], per_page: 15)
  end

  # 検索
  def search
    @members = Member.search(params[:q]).
      paginate(page: params[:page], per_page: 15)
    render "index"
  end

  # 会員情報の詳細
  def show
    @member = Member.find(params[:id])
  end
end
