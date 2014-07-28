class SearchController < ApplicationController
  def find
  	@found_articles = Article.find_by title: params[:q]
  end
end
