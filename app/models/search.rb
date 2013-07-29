class Search < ActiveRecord::Base
  belongs_to :category
  attr_accessible :keywords, :max_price, :min_price, :category_id

  def proj
  	@proj ||= find_projects
  	
  end


  def find_projects
  	projects = Project.order('name')
  	projects = projects.where("name like ?" , "#{keywords}%") if keywords.present?
  	projects = projects.where("category_id = ?" , category_id ) if category_id.present?
  	projects = projects.where("price >= ?" , min_price ) if min_price.present?
  	projects = projects.where("price <= ?" , max_price) if max_price.present?
  	projects
  end

end
