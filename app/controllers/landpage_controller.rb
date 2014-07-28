class LandpageController < ApplicationController
    def home
    	@random_article = Article.order("RANDOM()").first
    end
end
