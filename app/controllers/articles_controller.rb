class ArticlesController < ApplicationController
    skip_before_action :is_admin, only: :show

    def new 
        @category = Category.find(params[:category_id])
        @article  = @category.articles.build
    end

    def create
        @category = Category.find(params[:category_id])
        @article  = @category.articles.build(article_params)
        if @article.save
            redirect_to article_path(@article.id)
        else
            render :new
        end
    end

    def edit
        @article  = Article.find(params[:id])
    end

    def show
        @article  = Article.find(params[:id])
    end

    def update
        @article  = Article.find(params[:id])
        if @article.update(article_params)
            redirect_to article_path(@article.id)
        else
            render :edit
        end        
    end

    def destroy
        @article  = Article.find(params[:id])
        @category = @acticle.category
        @article.destroy

        redirect_to category_path(@category.id)
    end

    private
        def article_params
            params.require(:article).permit(:title, :content)
        end
end
