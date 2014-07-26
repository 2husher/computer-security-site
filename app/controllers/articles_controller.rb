class ArticlesController < ApplicationController
    def new 
        @category = Category.find(params[:category_id])
        @article  = @category.articles.build
    end

    def create
        @category = Category.find(params[:category_id])
        @article  = @category.articles.build(article_params)
        if @article.save
            redirect_to category_article_path(@category.id, @article.id)
        else
            render :new
        end
    end

    def edit
        @category = Category.find(params[:category_id])
        @article  = @category.articles.find(params[:id])
    end

    def show
        @category = Category.find(params[:category_id])
        @article  = @category.articles.find(params[:id])
    end

    def update
        @category = Category.find(params[:category_id])
        @article  = @category.articles.find(params[:id])
        if @article.update(article_params)
            redirect_to category_article_path(@category.id, @article.id)
        else
            render :edit
        end        
    end

    def destroy
        @category = Category.find(params[:category_id])
        @article  = @category.articles.find(params[:id])
        @article.destroy

        redirect_to category_path(@category.id)
    end

    private
        def article_params
            params.require(:article).permit(:title, :content)
        end
end
