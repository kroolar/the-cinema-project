class Toggle::ToggleComponent < ViewComponent::Base
  def initialize(checked: false, css: nil, name: nil, size: :md, value: nil)

    @checked = checked
    @css = css
    @name = name
    @size = size
    @value = value
  end
end
