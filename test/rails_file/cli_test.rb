require "test_helper"

module RailsFile
  class CLITest < ActiveSupport::TestCase
    test "no args" do
      out, err = capture_io { CLI.start([]) }
      assert_empty err, "nothing should be written to STDERR"
      assert_empty out, "nothing should be written to STDOUT"
    end

    test "--help" do
      out, err = capture_io { CLI.start([ "--help" ]) }
      assert_empty err, "nothing should be written to STDERR"
      assert_includes out, "Usage: rails_file [options]"
    end
  end
end
