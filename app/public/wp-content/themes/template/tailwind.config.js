/** @type {import('tailwindcss').Config} */
module.exports = {
   content: [
      "./**/*.php",
      "./src/**/*.jsx"
   ],
   safelist: [
      
   ],
   theme: {
      extend: {

      },
   },
   plugins: [
      require("@tailwindcss/forms")
   ],
}
