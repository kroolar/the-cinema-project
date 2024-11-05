class Popup::PopupComponent < ApplicationComponent
  attr_reader :on_close

  def initialize(**args)
    super(**args)

    @on_close = args[:on_close]
  end
end
