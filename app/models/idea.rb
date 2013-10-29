class Idea < ActiveRecord::Base
  has_many :users
  has_many :users, through: :plans
end
