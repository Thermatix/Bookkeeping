class MainController < ApplicationController

	def index
		@shelf = Shelf.all

	end

	def show
		@book = Books.find_by_month(params[show_month()])
	end

	def showmonth
		#@month = Shelf.month(Time.month + " " + Time.year)
		@month = (Time.month + " " + Time.year).to_s 
		Rails.logger.debug "the current date is:#{@month}"
		return @month
	end

end
