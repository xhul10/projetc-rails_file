# frozen_string_literal: true

require_relative "lib/rails_file/version"

Gem::Specification.new do |spec|
  spec.name          = "rails_file"
  spec.version       = RailsFile::VERSION
  spec.authors       = ["Lewis Buckley"]
  spec.email         = ["lewis@hey.com"]

  spec.summary       = "Rails File is a one-file Rails app generator."
  spec.homepage      = "https://www.github.com/lewispb/rails_file"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://www.github.com/lewispb/rails_file"
  spec.metadata["changelog_uri"] = "https://www.github.com/lewispb/rails_file/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
end
