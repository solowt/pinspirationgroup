class Pin < ActiveRecord::Base
  belongs_to :board
  has_many :tags
end
