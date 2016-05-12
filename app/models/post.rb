class Post < ActiveRecord::Base
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images

  scope :ordered, -> {order(:position)}
end
