require "test_helper"

class RailsFileTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RailsFile::VERSION
  end
end
