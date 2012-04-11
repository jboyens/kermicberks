require 'open-uri'
require 'awesome_print'
require 'active_support/core_ext'

module KermicBerks
  class Archive
    attr_accessor :file

    def initialize file
      self.file = file
    end

    def ls
      raise StandardError.new unless CommandLine.has_unrar?

      if File.readable? file
        abs_path = File.absolute_path(file)

        list = `#{CommandLine.unrar} lb #{abs_path}`
        list.split "\n"
      else
      end
    end

    def self.remote_url url
    end
  end
end
