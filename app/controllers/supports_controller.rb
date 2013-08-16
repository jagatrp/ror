class SupportsController < ApplicationController

	def new
		@support = Support.new
	end

	def index
	end
	def create
		SupportMailer.notify(params[:support]).deliver
		redirect_to new_support_path, notice: 'We will contact you asap.'
	end
end
