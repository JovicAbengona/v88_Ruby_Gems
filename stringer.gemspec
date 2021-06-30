# frozen_string_literal: true

require_relative "lib/stringer/version"

Gem::Specification.new do |spec|
  spec.name          = "stringer"
  spec.version       = Stringer::VERSION
  spec.authors       = ["Jovic Abengona"]
  spec.email         = ["jvlabengona@gmail.com"]

  spec.summary       = "First gem assignment"
  spec.description   = "First gem assignment in Ruby called 'Stringer'."
  spec.homepage      = "https://github.com/JovicAbengona/v88_Ruby_Gems"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://github.com/JovicAbengona/v88_Ruby_Gems"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/JovicAbengona/v88_Ruby_Gems"
  spec.metadata["changelog_uri"] = "https://github.com/JovicAbengona/v88_Ruby_Gems/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
