import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["popup"]

  connect() {}

  togglePopup() {
    const popup = this.popupTarget
    popup.classList.toggle('hidden')
  }
}
