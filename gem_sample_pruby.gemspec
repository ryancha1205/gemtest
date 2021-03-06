require_relative 'lib/gem_sample_pruby/version'

Gem::Specification.new do |spec|
  spec.name          = "ryan_sample_gem"
  spec.version       = GemSamplePruby::VERSION
  spec.authors       = ["ryancha1205"]
  spec.email         = ["herkas413@naver.com"]

  spec.summary       = %q{gemfie practice}
  spec.description   = %q{practice gemfile}
  spec.homepage      = "https://github.com/ryancha1205/gemtest"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "Set to 'https://github.com/ryancha1205/gemtest'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "https://github.com/ryancha1205/gemtest"
  # spec.metadata["changelog_uri"] = "Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'nokogiri'
  spec.add_runtime_dependency 'json', '>= 1.7.3'

  spec.add_development_dependency 'minitest'
end
