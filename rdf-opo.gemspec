
require 'date'
require File.join(File.dirname(__FILE__), 'lib/rdf-opo/version')

Gem::Specification.new do |s|

  s.name = "rdf-opo"
  s.version = ::rdf-opo::VERSION
  s.authors = "Peter Ohler"
  s.date = Date.today.to_s
  s.email = "peter@ohler.com"
  s.homepage = "http://www.opo.technology"
  s.summary = "A storage adapter for integrating opo and rdf.rb."
  s.description = %{A storage adapter for integrating opo and rdf.rb.}
  s.licenses = ['MIT']

  s.files = Dir["lib/**/*.rb"] + ['LICENSE', 'README.md']
  s.test_files = Dir["spec/**/*.spec"]
  s.extensions = ["ext/oj/extconf.rb"]

  s.has_rdoc = false
  s.add_runtime_dependency 'rdf', '~> 2.0'
  s.add_runtime_dependency 'opo', '~> 0.1'

  s.add_development_dependency 'rdf-spec', '~> 2.0'
  s.add_development_dependency 'rspec', '~> 3.4'
  s.add_development_dependency 'rspec-its', '~> 1.2'

end
