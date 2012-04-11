require 'active_support/all'

module KermicBerks
  class CommandLine
    COMMON_PATHS = %w[/usr/local/bin /usr/bin /bin /opt/local/bin]

    cattr_accessor :unrar

    def self.has_unrar?
      @@unrar ||= nil

      COMMON_PATHS.each do |path|
        begin
          matched = Dir.new(path).find_all { |f| f.match(/^unrar$/) }
          if matched.length > 0
            @@unrar ||= File.absolute_path("#{path}/unrar")
          end
        rescue Errno::ENOENT
          # file not found, not the end of the world
        end
      end

      !!@@unrar
    end
  end
end
