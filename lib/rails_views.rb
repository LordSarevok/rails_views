require "rails_views/version"
require 'schema_plus/active_record/connection_adapters/abstract_adapter'
module RailsViews
  module ActiveRecord
    module ConnectionAdapters
      def self.insert_connection_adapters #:nodoc:
        return if @inserted_connection_adapters
        ::ActiveRecord::ConnectionAdapters::AbstractAdapter.send(:include, RailsViews::ActiveRecord::ConnectionAdapters::AbstractAdapter)
      end
    end
  end
end
