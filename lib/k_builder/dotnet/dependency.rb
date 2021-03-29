# frozen_string_literal: true

module KBuilder
  # Data structures for dotnet builder
  module Dotnet
    # Represents any NuGet package or project reference dependencies
    class Dependency
      VALID_TYPES = [:nuget, :reference].freeze

      # Name of dependency
      attr_accessor :name

      # NuGet package or project reference
      # :nuget
      # :reference
      attr_accessor :type

      def initialize(name, type)
        @name = name
        @type = type

        raise KBuilder::Dotnet::Error, 'Unknown dependency type. Valid types: [:nuget, :reference]' unless VALID_TYPES.include?(type)
      end
    end
  end
end
