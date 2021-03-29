# frozen_string_literal: true

module KBuilder
  # Data structures for dotnet builder
  module Dotnet
    # Represents any NuGet package or project reference dependencies
    #
    # How this information is used:
    #
    # Add a nuget package to the project in current folder
    #  - dotnet add package <PACKAGE_NAME>
    #
    # Add project to a solution
    #  - dotnet sln <SOLUTION_NAME>.sln add <PROJECT_NAME>.csproj
    #
    # Add project reference to a project in the current folder
    #  - dotnet <PROJECT_NAME>.csproj
    #
    class Dependency
      VALID_TYPES = %i[nuget reference].freeze

      # Name of dependency
      attr_accessor :name

      # Type of dependency
      #  - :nuget         NuGet package
      #  - :reference     Project reference
      attr_accessor :type

      def initialize(name, type)
        @name = name
        @type = type

        raise KBuilder::Dotnet::Error, 'Name is required' if name.nil? || name.to_s == ''
        raise KBuilder::Dotnet::Error, 'Unknown dependency type. Valid types: [:nuget, :reference]' unless VALID_TYPES.include?(type)
      end
    end
  end
end
