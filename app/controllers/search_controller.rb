class SearchController < ApplicationController
  def find
  #	@found_articles = Article.find_by title: params[:q]
  #  @found_articles = Article.find_by_sql ["SELECT * FROM articles WHERE content LIKE ?", "%#{params[:q]}%"]
    @found_articles = Article.where("content LIKE ?", "%#{params[:q]}%").order("created_at desc")
  end
end
