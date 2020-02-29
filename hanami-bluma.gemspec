lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hanami/bluma/version"

Gem::Specification.new do |spec|
  spec.name          = "hanami-bluma"
  spec.version       = Hanami::Bluma::VERSION
  spec.authors       = ["S-H-GAMELINKS"]
  spec.email         = ["gamelinks007@gmail.com"]

  spec.summary       = %q{Using Bluma in Hanami}
  spec.description   = %q{Using Bluma in Hanami}
  spec.homepage      = "https://github.com/S-H-GAMELINKS/hanami-bluma"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/S-H-GAMELINKS/hanami-bluma"
  spec.metadata["changelog_uri"] = "https://github.com/S-H-GAMELINKS/hanami-bluma"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
