import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "list", "template" ]

  add() {
    const passenger_field = document.importNode(this.templateTarget.content, true);
    this.listTarget.appendChild(passenger_field)
  }
}
