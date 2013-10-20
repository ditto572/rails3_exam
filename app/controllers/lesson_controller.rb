class LessonController < ApplicationController
  before_filter :do_before, only: :step7

  def step1
    render text: "こんにちは、#{params[:name]}さん"
  end
  def step2
    render text: params[:controller] + "#" + params[:action]
  end
  def step3
    redirect_to action: "step4", status: 301
  end
  def step4
    render text: "step4に移動しました。"
  end
  def step5
    flash[:notice] = "step6に移動します。"
    redirect_to action: "step6"
  end
  def step6
    render text: flash[:notice]
  end
  def step7
    render text: @message
  end
  def step8
    @price = (2000 * 1.05).floor
  end
  def step15
    @message = "ごきげんいかが？\nRailsの勉強をがんばりましょう。"
  end
  def step19
    @items = { "フライパン" => 2680, "ワイングラス" => 2550, "ペッパーミル" => 4515, "ビーラー" => 945 }
  end

  private
  def do_before
    @message = "こんにちは"
  end
  
end
