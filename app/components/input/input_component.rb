class Input::InputComponent < ViewComponent::Base
  attr_reader :type

  def initialize(
    class_name: '',
    name: '',
    size: :md,
    type: :text,
    label: ''
  )
    @class_name = class_name
    @name = name
    @size = size
    @type = type.to_s
    @label = label
  end
end