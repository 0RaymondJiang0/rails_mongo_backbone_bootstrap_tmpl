# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_mongo_backbone_bootstrap_tmpl/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_mongo_backbone_bootstrap_tmpl"
  spec.version       = RailsMongoBackboneBootstrapTmpl::VERSION
  spec.authors       = ["Robot Jiang"]
  spec.email         = ["robot.z.jiang@gmail.com"]
  spec.description   = %q{Auto generate rails project based on mongo, backboneJS, bootstrap css.}
  spec.summary       = %q{Auto generate rails project based on mongo, backboneJS, bootstrap css.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = ['rmbb_generator']#spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
	spec.add_development_dependency "rspec", "~> 2.6"
	spec.add_dependency "thor"
end
