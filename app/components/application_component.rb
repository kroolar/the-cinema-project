class ApplicationComponent < ViewComponent::Base
  attr_reader :class_name, :target, :click

  def initialize(**args)
    super

    @class_name = args[:class_name]
    @target = args[:target]
    @click = args[:click]
  end

  def target?
    target.present?
  end

  def click?
    click.present?
  end

  def target_controller
    target.split('#').first
  end

  def target_name
    target.split('#').last
  end
end
