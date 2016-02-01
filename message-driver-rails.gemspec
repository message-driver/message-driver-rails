# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'message_driver/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "message-driver-rails"
  spec.version       = MessageDriver::Rails::VERSION
  spec.authors       = ["Matt Campbell"]
  spec.email         = ["matt@soupmatt.com"]

  spec.summary       = %q{Integrates message-driver with rails}
  spec.homepage      = "https://github.com/message-driver/message-driver-rails"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "message-driver", "~> 0.6.1"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4.0"
end
