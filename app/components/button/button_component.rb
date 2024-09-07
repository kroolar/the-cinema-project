class Button::ButtonComponent < ViewComponent::Base
  attr_reader :controller, :action

  def initialize(
    class_name: '',
    size: :md,
    text: nil,
    var: :primary,
    type: :button,
    controller: nil,
    action: nil
  )
    @class_name = class_name
    @size = size
    @text = text
    @var = var
    @type = type.to_s
    @controller = controller
    @action = action
  end
end
