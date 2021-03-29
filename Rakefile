# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

require 'rake/extensiontask'

desc 'Compile all the extensions'
task build: :compile

Rake::ExtensionTask.new('k_builder_dotnet') do |ext|
  ext.lib_dir = 'lib/k_builder_dotnet'
end

task default: %i[clobber compile spec]