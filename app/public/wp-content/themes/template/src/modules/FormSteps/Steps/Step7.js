export default ({
   formData
}) => {
   console.log(formData)
   return (
      <div className="flex flex-1 flex-col">
         <div className="flex flex-col">
            <p className="text-sm">Op basis van uw ingevoerde gegevens hebben wij een schatting van het aantal m2 wanden en/of plafonds gemaakt</p>
         </div>
         <ul className="flex flex-col text-sm mt-4 divide-y">
            <li className="grid grid-cols-2 gap-4 py-4">
               <div className="flex justify-between">
                  <span><b>Wanden</b></span>
                  <span>17 m²</span>
               </div>
               <div className="flex justify-between">
                  <span><b>25,- per m²</b></span>
                  <span>250,-</span>
               </div>
            </li>
            <li className="grid grid-cols-2 gap-4 py-4">
               <div className="flex justify-between">
                  <span><b>Plafond</b></span>
                  <span>10 m²</span>
               </div>
               <div className="flex justify-between">
                  <span><b>25,- per m²</b></span>
                  <span>250,-</span>
               </div>
            </li>
         </ul>
      </div>
   )
}