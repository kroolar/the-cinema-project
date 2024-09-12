class Button::ButtonComponent < ApplicationComponent
  attr_reader :action

  def initialize(**args)
    super(**args)

    @class_name = args[:class_name]
    @size = args[:size] || :md
    @text = args[:text]
    @var = args[:var]
    @type = args[:type]&.to_s || 'button'
    @click = args[:click]
  end
end
