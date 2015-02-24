# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'net/ftp/port_command/version'

Gem::Specification.new do |spec|
  spec.name          = "net-ftp-port_command"
  spec.version       = Net::FTP::PortCommand::VERSION
  spec.authors       = ["OSA Shunsuke"]
  spec.email         = ["hhelibebcnofnenamg@gmail.com"]
  spec.summary       = %q{Enable Net::FTP to send PORT command.}
  spec.description   = %q{Enable Net::FTP to send PORT command.}
  spec.homepage      = "https://github.com/s-osa/net-ftp-port_command"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
