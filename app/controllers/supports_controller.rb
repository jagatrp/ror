class SupportsController < ApplicationController

	def new
		@support = Support.new
	end

	def index
	end
	def create
		SupportMailer.notify(params[:support]).deliver
		
	end
end
