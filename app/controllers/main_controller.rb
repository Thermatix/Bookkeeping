require 'debugger'

class MainController < ApplicationController

	def index
		@shelf = Shelf.all
		#if @shelf == nil
			populateshelf()
		#end

	end

	def show
		@book = Books.find_by_month(params[showmonth()])
	end

	def showmonth
		if helf.month(Time.month + " " + Time.year) == nil
			
				@month = defaultmonth()
			
		else

		end
		
		Rails.logger.debug "Debug: the current date is:#{@month}"
		return @month
	end

	def save


	end
	def currentmonth
		@month = (Time.now.month + " " + Time.now.year).to_s
		Rails.logger.debug "Debug: the current date is:#{@month}"
		return @month
	end

	def new
		@shelf = Shelf.new
	end

	def populateshelf
		
		
		yearnow = Time.now.year.to_s
		Rails.logger.debug "Debug: current year: #{yearnow}"
		@newshelf = Array.new
		for i in 0..12
			@newshelf += Shelf.new(:month => "#{Date::MONTHNAMES[i]} #{yearnow}")
		end
		
		Rails.logger.debug "Debug: Array size: #{@newshelf.size}"
		 @newshelf.each do |cubook|
			Rails.logger.debug "Debug: #{cubook.month}"
		end
		Rails.logger.debug "Debug: #{@newshelf.month}"
		for cubook in @newshelf
			defualtbook(cubook)
		end
		@newshelf.save
	end

	def defaultbook(currentbook)
		entry = Shelf.find_by_month(:month => currentbook.month)
		for i in 0..30
			@entries = entry.book.new
			@entries.day = ""
			@entries.item = ""
			@entries.ref = ""
			@entries.in = ""
			@entries.out = ""

			Rails.logger.debug @entry[i]

		end
		currentbook = @entries
	end

	
end
