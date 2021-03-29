# frozen_string_literal: true

module KBuilder
  # Data structures for dotnet builder
  module Dotnet
    # Represents the namespaces that code relies on
    # and the dependency that this namespace may belong to
    class Namespace
      attr_accessor :namespace
      attr_accessor :dependency
    end
  end
end
