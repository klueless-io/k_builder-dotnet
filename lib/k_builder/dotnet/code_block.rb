# frozen_string_literal: true

module KBuilder
  # Data structures for dotnet builder
  module Dotnet
    # Represents some code that you wish to inject into a template.
    class CodeBlock
      attr_accessor :code
      attr_accessor :namespaces

      def initialize(code, namespaces = [])
        @code = code
        @namespaces = namespaces

        raise KBuilder::Dotnet::Error, 'Code cannot be nil' if code.nil?
      end
    end
  end
end
