require File.join(Rails.root, 'lib', 'grimoire_cli.rb')

desc "Run Grimoire CLI commands"
task grimoire: [:environment] do
	GrimoireCLI.start(ARGV)

	# Burn the remaining command line args
	# @see https://www.seancdavis.com/posts/4-ways-to-pass-arguments-to-a-rake-task/
	ARGV.each { |a| task a.to_sym do ; end }
end