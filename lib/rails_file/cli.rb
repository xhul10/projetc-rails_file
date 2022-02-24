require "optionparser"

module RailsFile
  class CLI
    def self.start(argv = [])
      command = parse_options(argv).first
      case command
      when "new"
        Commands::New.example
      end
    end

    def self.parse_options(argv)
      OptionParser.new do |parser|
        parser.set_program_name "rails_file"

        parser.on("-v", "--version") do
          puts VERSION
        end

        parser.on("-h", "--help", "Prints this help") do
          puts parser
        end
      end.parse!(argv)
    end
  end
end
