import File.join(Rails.root, 'lib', 'tcgplayer.rb')

namespace :sets do
  desc "Get list of sets and IDs from TCGplayer"
  task list: [:environment] do
    helper = TCGplayer.new
    sets = helper.sets

    puts "groupId\tname\tisSupplemental"
    sets.each do |set|
      puts "#{set['groupId']}\t#{set['name']}\t#{set['isSupplemental'] ? 'yes' : ''}"
    end
  end

end
