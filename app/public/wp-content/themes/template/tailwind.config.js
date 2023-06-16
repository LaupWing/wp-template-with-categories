/** @type {import('tailwindcss').Config} */
module.exports = {
   content: [
      "./**/*.php",
      "./src/**/*.jsx"
   ],
   safelist: [
      "menu" 
   ],
   theme: {
      extend: {

      },
   },
   plugins: [
      require("@tailwindcss/forms")
   ],
}
