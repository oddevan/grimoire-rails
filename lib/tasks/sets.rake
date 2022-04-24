namespace :sets do
  desc "Get list of sets and IDs from TCGplayer"
  task list: [:environment] do
    helper = TcgplayerHelper.new
    sets = helper.sets

    puts "groupId\tname\tisSupplemental"
    sets.each do |set|
      puts "#{set['groupId']}\t#{set['name']}\t#{set['isSupplemental'] ? 'yes' : ''}"
    end
  end

  desc "Import the given set to staging"
  task :import, [:set_id, :prefix, :all] => [:environment] do |task, args|
    if !args.set_id || !args.prefix
      puts "Need a set ID and prefix!\nUsage: rails \"sets:import[1234,brs]\""
      exit
    end
    puts "Importing #{args.all ? 'ALL' : 'NEW'} from TCGplayer set #{args.set_id} with prefix '#{args.prefix}'."


  end
end
