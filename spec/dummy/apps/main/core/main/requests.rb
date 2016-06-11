require_relative 'container'

module Main
  module Requests
    class Registrar
      attr_reader :container

      def initialize(container)
        @container = container
      end

      def define(identifier, &block)
        container.register(identifier, container[:transaction].define(&block))
      end
    end

    def self.define(&block)
      yield(Registrar.new(Container))
    end
  end
end
