export default class SideNav {
   constructor() {
      this.el = document.querySelector("nav#mobile")
      this.btn = document.querySelector("#menu")
      this.btn.addEventListener("click", this.open.bind(this))
   }

   open() {
      if(this.el.dataset.open === "false"){
         this.el.dataset.open = "true"
         this.el.style = "transform: translateX(0)"
      } else {
         this.el.dataset.open = "false"
         this.el.style = "transform: translateX(-100%)"
      }
   }
}