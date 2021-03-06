# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-eve_sso/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-eve_sso"
  spec.version       = Omniauth::EveSso::VERSION
  spec.authors       = ["David Briggs"]
  spec.email         = ["godamonra@gmail.com"]

  spec.summary       = %q{OmniAuth strategy for EVE Online Single Sign On}
  spec.description   = %q{OmniAuth strategy for EVE Online Single Sign On}
  spec.homepage      = "https://github.com/sankage/omniauth-eve_sso"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.4'
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", ">= 12.3.3"
end
