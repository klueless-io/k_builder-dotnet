# frozen_string_literal: true

module KBuilder
  module Dotnet
    # Denormalized view of dot net code including use namespaces and
    # nuget/project dependencies that would be needed for a single line of code.
    class DotNetSnippets
      attr_accessor :code_blocks
      attr_accessor :use_namespaces

      def initialize(code_blocks)
        @code_blocks = code_blocks
        @use_namespaces = code_blocks.namespaces.map(&:namespace).uniq

        # dependencies = code_blocks.map(&:namespaces).flat_map(&:dependencies)

        # @packages = dependencies.select { |d| d.type == :nuget }.uniq
        # @references = dependencies.select { |d| d.type == :reference }.uniq
      end

      attr_accessor :packages
      attr_accessor :references

      def get_dependencies
      end
    end
  end
end
