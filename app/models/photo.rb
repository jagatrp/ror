class Photo < ActiveRecord::Base
  belongs_to :album
  mount_uploader :photo, PhotoUploader

  attr_accessor :rating

  has_and_belongs_to_many :categories

  #accepts_nested_attributes_for :categories

  def view_categories
  	self.categories.map(&:name).join(", ")
  end

end

