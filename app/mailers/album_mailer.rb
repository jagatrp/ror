class AlbumMailer < ActionMailer::Base
  default from: "info@jagatram.com.np"

  def notify_user(album)
  	@user  = album.user
  	@album = album
  	mail(to: @user.email, 
  		subject: 'Album Created'
  		)
  end

end
