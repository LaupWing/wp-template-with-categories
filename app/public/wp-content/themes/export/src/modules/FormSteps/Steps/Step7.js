export default ({
   formData
}) => {
   const price = 25
   const rough_calculations_walls = Number(formData.step5.plafondhoogte) * Number(formData.step5.verdiepingen) * 4
   const rough_calculations_ceiling = Number(formData.step5.woonoppervlak) * Number(formData.step5.verdiepingen)
   const subtotal = (rough_calculations_ceiling * price) + (rough_calculations_walls * price)

   
   return (
      <div className="flex flex-1 flex-col">
         <div className="flex flex-col">
            <p className="text-sm">Op basis van uw ingevoerde gegevens hebben wij een schatting van het aantal m2 wanden en/of plafonds gemaakt</p>
         </div>
         <ul className="flex flex-col text-sm mt-4 divide-y">
            <li className="grid grid-cols-2 gap-4 py-4">
               <div className="flex justify-between">
                  <span><b>Wanden</b></span>
                  <span>{rough_calculations_walls} m²</span>
               </div>
               <div className="flex justify-between">
                  <span><b>25,- per m²</b></span>
                  <span>{rough_calculations_walls * price},-</span>
               </div>
            </li>
            <li className="grid grid-cols-2 gap-4 py-4">
               <div className="flex justify-between">
                  <span><b>Plafond</b></span>
                  <span>{rough_calculations_ceiling} m²</span>
               </div>
               <div className="flex justify-between">
                  <span><b>25,- per m²</b></span>
                  <span>{rough_calculations_ceiling * price},-</span>
               </div>
            </li>
            <li className="flex flex-col gap-4 py-4">
               <div className="flex justify-between">
                  <span><b>Subtotaal excl. BTW</b></span>
                  <span>{subtotal},-</span>
               </div>
               <div className="flex justify-between">
                  <span><b>BTW (21%)</b></span>
                  <span>{subtotal * 0.21},-</span>
               </div>
            </li>
            <li className="flex justify-between gap-4 py-4">
               <span><b>Totaal incl. BTW</b></span>
               <span>{(subtotal * 0.21) + subtotal},-</span>
            </li>
         </ul>
      </div>
   )
}