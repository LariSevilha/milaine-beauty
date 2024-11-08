import Carousel from 'stimulus-carousel'

// Connects to data-controller="slide_banner"
export default class extends Carousel {
  connect() {
    super.connect()

    // The swiper instance.
    this.swiper

    // Default options for every carousels.
    this.defaultOptions
  }

  // You can set default options in this getter.
  get defaultOptions() {
    return {
      // Your default options here
      "navigation": {
        "nextEl": ".swiper-button-next",
        "prevEl": ".swiper-button-prev"
      },
      "pagination": {
        "el": ".swiper-pagination",
        "clickable": true,
      },
      speed: 1000,
      loop: true,
      keyboard: true,
      autoplay: {
        delay: 6000, // Defina o intervalo de tempo em milissegundos entre os slides
        disableOnInteraction: false, // Permite que o autoplay continue mesmo quando o usuário interage com o Swiper
      }
    }
  }
}
