# frozen_string_literal: true

module KBuilder
  # Data structures for dotnet builder
  module Dotnet
    # Represents some code that you wish to inject into a template.
    class Code
      attr_accessor :code
      attr_accessor :namespaces
    end
  end
end
