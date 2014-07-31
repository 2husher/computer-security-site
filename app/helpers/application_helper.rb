module ApplicationHelper
  
  def all_categories
    @categories = Category.all
  end

  def sign_in?
  	!User.find_by_id(session[:id]).nil?
  end

  def current_commentor? comment_id
  	#Comment.find(comment_id).author == User.find_by_id(session[:id]) 
  end

  def admin?
  	false
  end
end
