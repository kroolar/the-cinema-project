class Icon::IconComponent < ViewComponent::Base
  attr_reader :action

  def initialize(class_name: '', icon:, action: nil)
    @class_name = class_name
    @icon = icon
    @action = action
  end
end