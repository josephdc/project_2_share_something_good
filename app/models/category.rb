class Category < ActiveRecord::Base

  has_many_to_many :users
  has_many :post

end
