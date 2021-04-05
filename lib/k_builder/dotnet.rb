# frozen_string_literal: true

require 'k_builder/dotnet/version'
require 'k_builder/dotnet/code_block'
require 'k_builder/dotnet/code_snippets'
require 'k_builder/dotnet/dependency'
require 'k_builder/dotnet/namespace'

module KBuilder
  module Dotnet
    # raise KBuilder::Dotnet::Error, 'Sample message'
    class Error < StandardError; end
  end
end

if ENV['KLUE_DEBUG']&.to_s&.downcase == 'true'
  namespace = 'KBuilder::Dotnet::Version'
  file_path = $LOADED_FEATURES.find { |f| f.include?('k_builder/dotnet/version') }
  version   = KBuilder::Dotnet::VERSION.ljust(9)
  puts "#{namespace.ljust(35)} : #{version.ljust(9)} : #{file_path}"
end
