class Button::ButtonComponent < ViewComponent::Base
  def initialize(class_name: '', size: :md, text: nil, var: :primary, type: :button)
    @class_name = class_name
    @size = size
    @text = text
    @var = var
    @type = type.to_s
  end
end