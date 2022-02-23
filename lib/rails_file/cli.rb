require "tty-option"

module RailsFile
  class CLI
    def self.start(argv = [])
      cmd = Command.new
      cmd.parse(argv)
      cmd.run
    end
  end
end
