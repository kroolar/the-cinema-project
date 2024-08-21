class Text::TextComponent < ViewComponent::Base
  attr_reader :class_name, :text

  def initialize(class_name: nil, text: nil)
    @class_name = class_name
    @text = text
  end
end
