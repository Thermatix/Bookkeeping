# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
year = Time.now.year
12.times do |i|
	
	trans_time = DateTime.new(year,i+1,1,0)
	ap [year,i+1,1,0]
	30.times do |t|
		Item.create! name: "", transaction_date: trans_time, reference: "", in_amount: "", out_amount: ""   
	end
	
end


