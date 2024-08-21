class Box::BoxComponent < ViewComponent::Base
  attr_reader :class_name

  def initialize(class_name: nil, title: nil, description: nil)
    @class_name = class_name
    @title = title
    @description = description
  end
end
