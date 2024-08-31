import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="booking"
export default class extends Controller {
  static targets = ['addedPassengers', 'template'];

  connect() {}

  addPassenger(e) {
    const template = this.templateTarget;
    const clone = template.content.cloneNode(true);
    e.preventDefault();
    
    this.addedPassengersTarget.appendChild(clone);
  }

  removePassenger(e) {
    const lastPassenger = this.addedPassengersTarget.lastElementChild;
    e.preventDefault();

    if (lastPassenger) {
      this.addedPassengersTarget.removeChild(lastPassenger);
    } else {
      console.log('You cannot remove the first passenger');
    }
  }
}
