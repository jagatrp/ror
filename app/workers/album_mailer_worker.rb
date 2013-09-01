class AlbumMailerWorker
	include Sidekiq::Worker

	sidekiq_options backtrace: true, retry: false, queue: :alb_mailer

	def perform(album_id)
		@album = Album.find album_id
		AlbumMailer.notify_user(@album).deliver
	end

	# def self.enqueue
	# 	Album.find_each do |alb|
	# 		AlbumMailerWorker.perform-async(alb.id)
	# 	end
	# end

end
