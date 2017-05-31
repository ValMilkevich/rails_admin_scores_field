require "rails_admin_scores_field/engine"

module RailsAdminScoresField
  # Your code goes here...
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class ScoresField < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types::register(self)
          include RailsAdminScoresField

          def formatted_value
            super
          end

          register_instance_option(:scores_config) do
            {}
          end

          register_instance_option(:partial) do
            :form_scores_field
          end

          def generic_help
            "" # false is ignored by I18n.translate
          end

          RailsAdmin::Config::Fields::Types::register(self)
        end
      end
    end
  end
end