class Blog < ApplicationRecord

  #validations
  validates_presence_of :title, :body

  #relations
  belongs_to :user
end
