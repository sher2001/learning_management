import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  toggle(){
    var mobileLinksEl = document.getElementById("mobile-links");
    var barEl = document.getElementById("bars");
    var closeEl = document.getElementById("close");

    mobileLinksEl.classList.toggle("hidden");
    barEl.classList.toggle("hidden");
    closeEl.classList.toggle("hidden");
  }
}
