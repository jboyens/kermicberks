module Ruby
	module Cbr
		module CommandLine
			COMMON_PATHS = %w[/usr/local/bin /usr/bin /bin /opt/local/bin]

			def self.has_unrar?
				@@unrar_path ||= nil

				COMMON_PATHS.each do |path|
					begin
						matched = Dir.new(path).find_all { |f| f.match(/^unrar$/) }
						if matched.length > 0
							@@unrar_path ||= File.new("#{path}/unrar")
						end
					rescue Errno::ENOENT
						# file not found, not the end of the world
					end
				end

				!!@@unrar_path
			end
		end
	end
end
