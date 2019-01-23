require 'Bundler'
require 'csv'
Bundler.require

$:.unshift File.expand_path("./../lib/app", __FILE__)
require 'app/scrapper'


def save_as_JSON(get) 
	get = get
	File.open("..db/email.json","w") do |f|
		f.write(JSON.pretty_generate(get))
	end
end

def save_as_csv(get)
	get = get
	csv.open("db/email.csv", "w"){|csv| get.to_a.each {|elem| csv << elem }}
end

def save_as_drive
	
end