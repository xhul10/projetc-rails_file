module RailsFile
  module Commands
    class New < BaseCommand
      include Thor::Actions

      no_commands do
        def example
          template "testing.erb.rb", File.join(Dir.pwd, "testing.rb")
        end
      end
    end
  end
end
