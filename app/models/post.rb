class Post < ActiveRecord::Base

  belongs_to :category
  belongs_to :user

  validates :description, presence: true

end
