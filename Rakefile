require 'rubygems'
require 'rspec/core/rake_task'

require File.join(File.dirname(__FILE__), 'lib/rdf-opo/version')

namespace :gem do
  desc "Build the rdf-opo-#{Opo.VERSION}.gem file"
  task :build do
    sh "gem build rdf-opo.gemspec && mv rdf-opo-#{Opo.VERSION}.gem pkg/"
  end

  desc "Release the rdf-opo-#{Opo.VERSION}.gem file"
  task :release do
    sh "gem push pkg/rdf-opo-#{Opo.VERSION}.gem"
  end
end

desc 'Run specifications'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.rspec_opts = %w(--options spec/spec.opts) if File.exists?('spec/spec.opts')
end

desc "Run specs through RCov"
RSpec::Core::RakeTask.new("spec:rcov") do |spec|
  spec.rcov = true
  spec.rcov_opts =  %q[--exclude "spec"]
end

task default: :spec
task specs: :spec
