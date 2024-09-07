class Controller::ControllerComponent < ViewComponent::Base
  attr_reader :class_name, :name

  def initialize(
    name:,
    class_name: nil
  )
    @class_name = class_name
    @name = name
  end
end
