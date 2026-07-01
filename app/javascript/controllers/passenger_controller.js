import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "list", "template", "passenger" ]

  add() {
    const passenger_field = this.templateTarget.innerHTML.replace(/NEW_RECORD/g, this.passengerTargets.length)
    this.listTarget.insertAdjacentHTML('beforeend', passenger_field)
}

  remove() {
    if (this.passengerTargets.length > 1) {
        const passenger = this.passengerTargets.at(-1);
        passenger.remove()
    }
  }
}
