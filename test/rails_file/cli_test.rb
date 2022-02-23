require "test_helper"

module RailsFile
  class CLITest < MiniTest::Test
    def test_help_with_no_args
      out, err = capture_io { CLI.start }
      assert_empty err, "nothing should be written to STDERR"
      assert_includes out, "Usage: rails_file new [OPTIONS]"
    end
  end
end
