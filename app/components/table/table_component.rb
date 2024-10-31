class Table::TableComponent < ApplicationComponent
  attr_reader :columns, :data

  def initialize(**args)
    super(**args)

    @data = args[:data] || []
    @columns = []
  end

  def number(name)
    @columns << { name:, type: :number }
  end
end
