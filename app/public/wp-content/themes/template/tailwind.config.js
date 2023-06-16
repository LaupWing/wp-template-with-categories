/** @type {import('tailwindcss').Config} */
module.exports = {
   content: [
      "./**/*.php",
      "./src/**/*.jsx"
   ],
   safelist: [
      "menu",
      "menu-item",
      "sub-menu"
   ],
   theme: {
      extend: {
         spacing: {
            nav: "var(--height-nav)"
         },
         height: {
            "screen-minus-nav": "calc(var(--screen-height, 100vh) - var(--height-nav))"
         }
      },
   },
   plugins: [
      require("@tailwindcss/forms")
   ],
}
