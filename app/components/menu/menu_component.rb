class Menu::MenuComponent < ViewComponent::Base
  attr_reader :class_name

  def initialize(class_name: nil)
    @class_name = class_name
  end
end
