import RadioImage from "../RadioImage"

export default () => {
   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col">
            <h3 className="text-2xl">Betreft het nieuwbouw of een renovatie woning?</h3>
            <div className="mt-6 flex flex-col">
               <div className="grid gap-2 grid-cols-2">
                  <RadioImage
                     name={"plafonds"}
                     value={"tussenwoning"}
                  />
                  <RadioImage 
                     name={"plafonds"}
                     value={"tweekapper"}
                  />
               </div>
               <div className="flex flex-col my-4 text-lg">
                  <p className="font-semibold">Schikt uw woning over een uitbouw?</p>
                  <div className="flex gap-4 mt-1">
                     <div className="flex gap-2 items-center text-2">
                        <input type="radio" name="uitbouw" id="uitbouw_yes" />
                        <label htmlFor="uitbouw_yes">Ja</label>
                     </div>
                     <div className="flex gap-2 items-center text-2">
                        <input type="radio" name="uitbouw" id="uitbouw_no" />
                        <label htmlFor="uitbouw_no">Nee</label>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   )
}