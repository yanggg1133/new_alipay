# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'new_alipay/version'

Gem::Specification.new do |spec|
  spec.name = "new_alipay"
  spec.version = NewAlipay::VERSION
  spec.authors = ["saxer"]
  spec.email = ["15201280641@qq.com"]
  spec.licenses = ["MIT"]

  spec.summary = %q{支付宝支付}
  spec.description = %q{支付宝移动支付}
  spec.homepage = "https://github.com/mumaoxi/new_alipay"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|config)/}) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "faraday", "~> 0.9"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "rails", "~> 3.2"
end
