
import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Discover the best", "Create your own."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
