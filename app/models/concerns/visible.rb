module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['complete', 'incomplete', 'partial']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    def complete_count
      where(status: 'complete').count
    end

    def incomplete_count
      where(status: 'incomplete').count
    end
  end
end
