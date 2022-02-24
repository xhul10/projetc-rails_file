require "thor"

module RailsFile
  module Commands
    class BaseCommand < Thor
      def self.method_missing(method_name, *args)
        source_root File.join(RailsFile.root, "lib", "rails_file", "templates")
        instance = new
        instance.public_send(method_name, *args) if instance.respond_to? method_name
      end
    end
  end
end
