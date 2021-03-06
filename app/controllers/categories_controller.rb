class CategoriesController < ApplicationController
    skip_before_action :is_admin, only: :show

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to category_path(@category.id)
        else
            render :new
        end
    end

    def edit
        @category = Category.find(params[:id])
    end

    def update
        @category = Category.find(params[:id])
        if @category.update(category_params)
            redirect_to category_path(@category.id)
        else
            render :edit
        end
    end

    def show
        @category = Category.includes(:articles).find(params[:id])
    end

    def destroy
        @category = Category.find(params[:id])
        @category.destroy

        redirect_to categories_path
    end

    private
      def category_params
        params.require(:category).permit(:name)
      end
end
