const {render} = wp.element
import {AiFillFacebook, AiFillInstagram, AiFillLinkedin, AiOutlineWhatsApp} from "react-icons/ai"

console.log(document.getElementById("socials"))

const Socials = () => {
   return (
      <div className="flex flex-col">
         <h2 className="font-bold text-xl">Socials</h2>
         <ul className="mt-4 flex flex-col gap-2 opacity-70">
            <li className="flex gap-2 items-center">
               <AiFillInstagram size={22}/>
               Instagram
            </li>
            <li className="flex gap-2 items-center">
               <AiFillFacebook size={22}/>
               Facebook
            </li>
            <li className="flex gap-2 items-center">
               <AiFillLinkedin size={22}/>
               LinkedIn
            </li>
            <li className="flex gap-2 items-center">
               <AiOutlineWhatsApp size={22}/>
               Whatsapp
            </li>
         </ul>
      </div>
   )
}

render(<Socials/>, document.getElementById("socials"))