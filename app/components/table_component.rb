# frozen_string_literal: true

class TableComponent < ViewComponent::Base
  def initialize(data:, header:)
    @data = data
    @header = header
  end

end
