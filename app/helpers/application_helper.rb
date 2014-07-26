module ApplicationHelper
  
  def all_categories
    @categories = Category.all
  end
end
