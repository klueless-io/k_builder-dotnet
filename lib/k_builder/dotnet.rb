# frozen_string_literal: true

require 'k_builder/dotnet/version'
require 'k_builder/dotnet/code_block'
require 'k_builder/dotnet/code_snippets'
require 'k_builder/dotnet/dependency'
require 'k_builder/dotnet/namespace'

# dotnet add package Selenium.WebDriver
# dotnet add package Selenium.WebDriver.ChromeDriver
# mkdir ClubMembership.Web.UI   && cd ClubMembership.Web.UI   && dotnet new mstest -n ClubMembership.Web.UI -o .    && cd ..
# mkdir ClubMembership.Web.Unit && cd ClubMembership.Web.Unit && dotnet new mstest -n ClubMembership.Web.Unit -o .  && cd ..

module KBuilder
  module Dotnet
    # raise KBuilder::Dotnet::Error, 'Sample message'
    class Error < StandardError; end
  end
end

if ENV.fetch('KLUE_DEBUG', 'false').downcase == 'true'
  namespace = 'KBuilder::Dotnet::Version'
  file_path = $LOADED_FEATURES.find { |f| f.include?('k_builder/dotnet/version') }
  version   = KBuilder::Dotnet::VERSION.ljust(9)
  puts "#{namespace.ljust(35)} : #{version.ljust(9)} : #{file_path}"
end
