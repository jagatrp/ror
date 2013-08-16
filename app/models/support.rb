class Support
	include ActiveModel::Model
	attr_accessor :subject, :message

	validates_presence_of :subject
	#validates :subject, message: true
end