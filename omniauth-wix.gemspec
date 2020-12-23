# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/wix/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-wix"
  spec.version       = OmniAuth::Wix::VERSION
  spec.authors       = ["Mike Machado"]
  spec.email         = ["mike@leaddyno.com"]

  spec.summary       = %q{Wix strategy for OmniAuth.}
  spec.homepage      = "https://github.com/LeadDyno/omniauth-wix"
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2'
end
