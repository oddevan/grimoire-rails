namespace :sets do
  desc "Get list of sets and IDs from TCGplayer"
  task list: [:environment] do
    helper = Tcgplayer::ApiClient.new
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
    do_all = args.all || false
    puts "Importing #{do_all ? 'ALL' : 'NEW'} from TCGplayer set #{args.set_id} with prefix '#{args.prefix}'."

    importer = Import::SetImporter.new(
      fetcher: Tcgplayer::ApiClient.new,
      parser_class: Tcgplayer::CardParser,
      model_class: StagingPrinting,
    )
    importer.import_set args.set_id, prefix: args.prefix, get_all: do_all
  end
end
