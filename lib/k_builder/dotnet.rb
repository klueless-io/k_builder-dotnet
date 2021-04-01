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

puts "KBuilder::Dotnet::Version: #{KBuilder::Dotnet::VERSION}" if ENV['KLUE_DEBUG']&.to_s&.downcase == 'true'