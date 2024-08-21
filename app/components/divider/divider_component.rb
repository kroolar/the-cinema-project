class Divider::DividerComponent < ViewComponent::Base
  def initialize(class_name: '', text: nil)
    @class_name = class_name
    @text = text
  end
end