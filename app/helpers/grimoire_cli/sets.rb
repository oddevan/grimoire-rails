require 'thor'

module GrimoireCli
	class Sets < SubCommandBase
    desc 'list', "Get list of sets and IDs from TCGplayer"
    def list()
      helper = TcgpHelper.new
      sets = helper.sets

      puts "groupId\tname\tisSupplemental"
      sets.each do |set|
        puts "#{set['groupId']}\t#{set['name']}\t#{set['isSupplemental'] ? 'yes' : ''}"
      end
    end
	end
end