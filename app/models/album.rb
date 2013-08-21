class Album < ActiveRecord::Base
	belongs_to :user
	has_many :photos
	validates :title, presence: true, uniqueness: true
	#validates_uniqueness_of :title

	validates :user_id, presence: true

	before_save :uppercase_title

	#before_create :aaa

	def uppercase_title
		self.title = self.title.capitalize
	end
end
