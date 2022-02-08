import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {url: String}

  initialize() {
    window.location.href = this.urlValue
  }
}
