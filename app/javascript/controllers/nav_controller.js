import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "menu" ]

  connect() {
    console.log("Nav controller connected")
  }

  toggle() {
    console.log("Toggle called")
    if (this.hasMenuTarget) {
      this.menuTarget.classList.toggle("hidden")
    }
  }
}