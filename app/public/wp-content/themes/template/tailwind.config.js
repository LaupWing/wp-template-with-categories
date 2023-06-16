/** @type {import('tailwindcss').Config} */
module.exports = {
   content: [
      "./**/*.php",
      "./src/**/*.jsx"
   ],
   safelist: [
      "menu",
      "menu-item"
   ],
   theme: {
      extend: {

      },
   },
   plugins: [
      require("@tailwindcss/forms")
   ],
}
