import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="colorme"
export default class extends Controller {
  static targets = ['text'];

  connect() {
    console.log('colorme active');
  }

  changeToRed() {
    console.log('changeToRed activated');
    this.textTargets.forEach((element) => {
      element.classList.toggle('red');
    });
    // this.titleTextTarget.classList.toggle('red');
    // this.otherTitleTextTarget.classList.toggle('red');
  }
}
