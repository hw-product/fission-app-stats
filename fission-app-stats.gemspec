$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__)) + '/lib/'
require 'fission-app-stats/version'
Gem::Specification.new do |s|
  s.name = 'fission-app-stats'
  s.version = FissionApp::Stats::VERSION.version
  s.summary = 'Fission App Stats'
  s.author = 'Heavywater'
  s.email = 'fission@hw-ops.com'
  s.homepage = 'http://github.com/hw-product/fission-app-stats'
  s.description = 'Fission stats interface'
  s.require_path = 'lib'
  s.add_dependency 'fission-data'
  s.add_dependency 'fission-app'
  s.files = Dir['{lib,app,config}/**/**/*'] + %w(fission-app-stats.gemspec README.md CHANGELOG.md)
end
