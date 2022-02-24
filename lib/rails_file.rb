# frozen_string_literal: true

require "active_support"
require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.inflector.inflect(
  "cli" => "CLI"
)
loader.setup

module RailsFile
  class Error < StandardError; end

  def self.root
    File.dirname __dir__
  end
end
