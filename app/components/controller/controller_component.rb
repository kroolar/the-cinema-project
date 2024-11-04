class Controller::ControllerComponent < ViewComponent::Base
  attr_reader :class_name, :name

  def initialize(name:)
    @name = name.to_s
  end
end
