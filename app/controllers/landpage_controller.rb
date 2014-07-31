class LandpageController < ApplicationController
	skip_before_action :is_admin

    def home
    	@random_article = Article.order("RANDOM()").first
    end
end
