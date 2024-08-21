class Label::LabelComponent < ViewComponent::Base
  def initialize(class_name: "", text: "")
    @class_name = class_name
    @text = text
  end

  def render?
    @text.present?
  end
end
