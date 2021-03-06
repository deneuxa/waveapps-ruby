# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'waveapps/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "waveapps-ruby"
  spec.version       = WaveApps::Ruby::VERSION
  spec.authors       = ["Manpreet Narang"]
  spec.email         = ["manpreet@metawarelabs.com"]

  spec.summary       = %q{WaveApps API Ruby DSL}
  spec.description   = %q{WaveApps API Ruby DSL}
  spec.homepage      = "https://github.com/metaware/waveapps-ruby"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'faraday', '~> 0.12.2'
  spec.add_runtime_dependency 'oj', '~> 3.3.3'
  spec.add_runtime_dependency 'dry-configurable', '~> 0.1'
  spec.add_runtime_dependency 'dry-types', '~> 0.11'
  spec.add_runtime_dependency 'dry-struct', '~> 0.3.1'
  spec.add_development_dependency 'pry', '~> 0.10'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'rubocop', '~> 0.42'
  spec.add_runtime_dependency 'factory_girl', '~> 4.5'
end
