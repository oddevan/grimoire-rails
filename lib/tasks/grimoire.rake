desc "Run Grimoire CLI commands"
task grimoire: [:environment] do
	GrimoireCli::Main.start(ARGV)

	# Burn the remaining command line args
	# @see https://www.seancdavis.com/posts/4-ways-to-pass-arguments-to-a-rake-task/
	ARGV.each { |a| task a.to_sym do ; end }
end