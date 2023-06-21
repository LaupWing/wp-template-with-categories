/** @type {import('tailwindcss').Config} */
module.exports = {
   content: [
      "./**/*.php",
      "./src/**/*.{jsx,js}"
   ],
   safelist: [
      "menu",
      "menu-item",
      "sub-menu",
      "current-menu-item"
   ],
   theme: {
      extend: {
         colors: {
            main: "rgb(var(--color-main) / <alpha-value>)",
            "accent-1": "rgb(var(--color-accent1) / <alpha-value>)",
            "accent-2": "rgb(var(--color-accent2) / <alpha-value>)",
         },
         spacing: {
            nav: "var(--height-nav)"
         },
         height: {
            "screen-minus-nav": "calc(var(--screen-height, 100vh) - var(--height-nav))"
         },
         minHeight: {
            "screen-minus-nav": "calc(var(--screen-height, 100vh) - var(--height-nav))"
         }
      },
   },
   plugins: [
      require("@tailwindcss/forms")
   ],
}
