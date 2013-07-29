class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :projects
  has_many :searchs
end
