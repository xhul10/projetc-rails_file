# frozen_string_literal: true

require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.inflector.inflect(
  "cli" => "CLI"
)
loader.setup

module RailsFile
  class Error < StandardError; end
end
