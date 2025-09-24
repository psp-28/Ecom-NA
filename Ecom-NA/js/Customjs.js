<script>
    document.addEventListener('DOMContentLoaded', function () {
  const navbar = document.getElementById('mainNavbar');
    if (!navbar) return; // fail-safe

    // detect presence of a fixed promo bar (marquee) and compute its height
    let promoHeight = 0;
    const promo = document.querySelector('.marquee');
    if (promo) {
    const promoStyle = window.getComputedStyle(promo);
    if (promoStyle.position === 'fixed' || promoStyle.position === 'sticky') {
        promoHeight = promo.offsetHeight;
    }
  }

    // initialize navbar top so it sits below promo (if present)
    navbar.style.top = promoHeight + 'px';

    // ensure page content doesn't hide behind fixed promo+navbar
    function updateBodyPadding() {
        document.body.style.paddingTop = (promoHeight + navbar.offsetHeight) + 'px';
  }
    updateBodyPadding();

    // scroll behavior: hide on scroll down, show on scroll up
    let lastScroll = window.pageYOffset || document.documentElement.scrollTop;
    let ticking = false;

    window.addEventListener('scroll', function () {
    if (!ticking) {
        window.requestAnimationFrame(function () {
            const currentScroll = window.pageYOffset || document.documentElement.scrollTop;

            // if at very top, always show navbar
            if (currentScroll <= 0) {
                navbar.style.top = promoHeight + 'px';
            } else if (currentScroll < lastScroll) {
                // scrolling up -> show
                navbar.style.top = promoHeight + 'px';
            } else {
                // scrolling down -> hide (move it above viewport by its own height)
                navbar.style.top = -(navbar.offsetHeight) + 'px';
            }

            lastScroll = currentScroll;
            ticking = false;
        });
    ticking = true;
    }
  }, {passive: true });

    // re-calc sizes on resize (important for responsive)
    window.addEventListener('resize', function () {
        // small timeout to let layout settle
        setTimeout(function () {
            promoHeight = 0;
            if (promo) {
                const promoStyle = window.getComputedStyle(promo);
                if (promoStyle.position === 'fixed' || promoStyle.position === 'sticky') {
                    promoHeight = promo.offsetHeight;
                }
            }
            navbar.style.top = promoHeight + 'px';
            updateBodyPadding();
        }, 50);
  });
});



   
        document.getElementById("btnGoogleSignup").addEventListener("click", function(){
            // For demo only, normally here you integrate Google OAuth API
            alert("Redirecting to Google Sign-In...");
});
  








</script>
