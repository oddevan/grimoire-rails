require 'thor'

module GrimoireCli
	class SubCommandBase < Thor
		def self.banner(command, namespace = nil, subcommand = false)
			"#{basename} grimoire #{subcommand_prefix} #{command.usage}"
		end

		def self.subcommand_prefix
			self.name.gsub(%r{.*::}, '').gsub(%r{^[A-Z]}) { |match| match[0].downcase }.gsub(%r{[A-Z]}) { |match| "-#{match[0].downcase}" }
		end
	end
end