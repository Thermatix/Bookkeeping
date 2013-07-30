require 'debugger'

class MainController < ApplicationController

	def index
		@items = Item.where("transaction_date > ? AND  transaction_date < ?",lower_date,upper_date)
		load_next_month
		load_previous_month
		@month = "#{ Date::MONTHNAMES[@items.first.transaction_date.month]} #{@items.first.transaction_date.year}"
		Rails.logger.debug "Debug current month: #{@month}"
	end

	def show

	end

	def save
	end

	def new

	end

	private

	def lower_date
		Date.civil year,month,1
	end

	def upper_date
		Date.civil year,month,-1
	end

	def month
		(params[:month] || DateTime.now.month).to_i
	end

	def year
		(params[:year] || DateTime.now.year).to_i
	end

	def load_next_month
		@next_month = month + 1
		@next_year = year
		if @next_month > 12
			@next_year += 1
			@next_month = 1
		end
	end

	def load_previous_month
		@previous_month = month - 1
		@prevous_year = year

		if @previous_month < 1
			@previous_year -= 1
			@previous_month = 12
		end
	end

end
