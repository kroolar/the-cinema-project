class Icon::IconComponent < ViewComponent::Base
  def initialize(class_name: '', icon:)
    @class_name = class_name
    @icon = icon
  end
end