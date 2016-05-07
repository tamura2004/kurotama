module Parameterable
  extend ActiveSupport::Concern

  included do
    def path
      [self, Hash[model_name.param_key, attributes.compact.except("created_at","updated_at")]]
    end
  end
end
