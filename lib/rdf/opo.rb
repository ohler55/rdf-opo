
require 'rdf'

module RDF

  module Opo
    class Repository < ::RDF::Repository
      # 
      attr_reader :client

      #
      def initialize(options = {}, &block)
        # TBD connection parameters
        super(options, &block)
      end

      # @see RDF::Mutable#insert_statement
      def supports?(feature)
        case feature.to_sym
        when :graph_name       then true
        when :inference        then false
        #when :validity         then @options.fetch(:with_validity, true)
        when :literal_equality then true
        when :atomic_write     then false
        when :snapshots        then false
        else false
        end
      end

      # TBD check permissions in the future
      def readable?
        true
      end

      # TBD check permissions in the future
      def writable?
        true
      end
      
      def persistent?
        true
      end
      
      def transient?
        false
      end

      def empty?
        0 == count
      end

      def count
        # TBD query number of quads
      end

      def has_statement?(statement)
        # TBD search query for statement parts
      end

      #   repository.insert(*statements)
      #   repository.insert(statement)
      #   repository.insert([subject, predicate, object])
      #   repository << statement
      #   repository << [subject, predicate, object]
      def insert(*statement)
        # TBD
      end

      #   repository.delete(*statements)
      #   repository.delete(statement)
      #   repository.delete([subject, predicate, object])
      def delete(*statements)
        # TBD
      end

      def clear!
        # TBD
      end

    end
  end
end
