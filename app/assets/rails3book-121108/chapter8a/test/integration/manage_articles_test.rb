# coding: utf-8
require 'test_helper'

class ManageArticlesTest < ActionDispatch::IntegrationTest
  test "add an article" do
    get "/articles/new"
    assert_response :success
    
    post "/articles",
      article: Factory.attributes_for(:article, title: "")
    assert_template "new"
    assert_select "h2", "エラーがあります。"
    
    post "/articles",
      article: Factory.attributes_for(:article, title: "テスト記事")
    assert_redirected_to assigns[:article]
    follow_redirect!
    assert_select "h1", "テスト記事"
  end
end
