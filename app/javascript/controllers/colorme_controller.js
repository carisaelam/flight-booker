import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="colorme"
export default class extends Controller {
  static targets = ['text', 'flights', 'search', 'display'];

  connect() {
    console.log('colorme active');
  }

  changeToRed() {
    console.log('changeToRed activated');
    this.textTargets.forEach((element) => {
      element.classList.toggle('red');
    });
  }

  displayFlights(e) {
    e.preventDefault();
    console.log('displayFlights activated');
    console.log(
      'Before change, flights target style:',
      this.flightsTarget.hidden
    );
    this.flightsTarget.hidden = false;
    console.log(
      'After change, flights target style:',
      this.flightsTarget.hidden
    );
    this.searchTarget.hidden = true;
    this.displayTarget.hidden = false;
  }
}
