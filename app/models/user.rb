class User < ActiveRecord::Base

  has_and_belongs_to_many :categories
  has_many :post

  has_secure_password
    validates :email, presence: true, uniqueness: {case_sensitive: false}

    validates :user_name, presence: true, uniqueness: {case_sensitive: false}

end
