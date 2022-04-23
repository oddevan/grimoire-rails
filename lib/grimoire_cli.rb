require File.join(Rails.root, 'lib', 'tcgplayer.rb')
require 'thor'

class GrimoireCLI < Thor
	desc 'grimoire hello', 'test Thor'
	def hello()
		puts "Thor is up!"
	end

  desc 'grimoire list', "Get list of sets and IDs from TCGplayer"
  def list()
    helper = TCGplayer.new
    sets = helper.sets

    puts "groupId\tname\tisSupplemental"
    sets.each do |set|
      puts "#{set['groupId']}\t#{set['name']}\t#{set['isSupplemental'] ? 'yes' : ''}"
    end
  end
end