module RailsFile
  class Command
    include TTY::Option

    usage do
      program "rails_file"

      command "new"

      desc "Generate a new Rails app in a single file"
    end

    flag :help do
      default "yes"
      short "-h"
      long "--help"
      desc "Print usage"
    end

    def run
      if params[:help]
        print help
      else
        pp params.to_h
      end
    end
  end
end
