require 'thor'

module GrimoireCli
  class Main < Thor
    def self.banner(command, namespace = nil, subcommand = false)
      "#{basename} grimoire #{command.usage}"
    end

    desc 'hello', 'test Thor'
    def hello()
      puts "Thor is up!"
    end

    desc 'sets SUBCOMMAND ...ARGS', 'Import and get info about sets'
    subcommand "sets", Sets
  end
end