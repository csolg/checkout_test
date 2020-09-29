require_relative 'lib/checkout/version'

Gem::Specification.new do |spec|
  spec.name          = "checkout"
  spec.version       = Checkout::VERSION
  spec.authors       = ["Oleg Bavaev"]
  spec.email         = ["csolg7@gmail.com"]

  spec.summary       = %q{Implementation a checkout system}
  spec.description   = %q{Implementation a checkout system}
  spec.homepage      = "https://right.video"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/csolg/checkout_test"
  spec.metadata["changelog_uri"] = "https://github.com/csolg/checkout_test"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
