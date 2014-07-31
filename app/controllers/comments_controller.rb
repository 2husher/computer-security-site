class CommentsController < ApplicationController
	skip_before_action :is_admin
	before_action :sign_in

	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.build(comment_params)
		if @comment.save
			#success message
		else
			#failure message
		end
		redirect_to article_path(@article.id)
	end

	def destroy
		@comment = Comment.find(params[:id])
		@article = @comment.article
		@comment.destroy

		redirect_to article_path(@article.id)
	end

	private
		def comment_params
			params.require(:comment).permit(:author, :content)
		end
end
