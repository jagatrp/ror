class SupportMailer < ActionMailer::Base
  default from: "from@example.com"

  def notify(params)
  	mail(to: 'own@example.com',
  		subject: params[:subject],
  		body: params[:message])
  end
end
