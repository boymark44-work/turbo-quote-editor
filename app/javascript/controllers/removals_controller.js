import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="removals"
export default class extends Controller {
  connect () {
  }

  remove () {
    this.element.remove() // It removes the DOM node where the controller is attached.
  }
}
