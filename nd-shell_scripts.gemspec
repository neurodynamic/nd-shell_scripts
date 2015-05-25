# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nd/shell_scripts/version'

Gem::Specification.new do |spec|
  spec.name          = "nd-shell_scripts"
  spec.version       = Nd::ShellScripts::VERSION
  spec.authors       = ["Neurodynamic"]
  spec.email         = ["developer@neurodynamic.io"]

  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = ""
  end

  spec.summary       = %q{Some shell scripts in Ruby}
  spec.description   = %q{}
  spec.homepage      = "https://bitbucket.org/neurodynamic/nd-shell_scripts"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "colorize"
  spec.add_development_dependency "repo_timetracker"
  spec.add_development_dependency "repos_report"
end
