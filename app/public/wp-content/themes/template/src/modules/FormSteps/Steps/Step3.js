import Radio from "../Radio"
import RadioImage from "../RadioImage"

export default ({
   formData,
   update
}) => {
   const plafonds = [
      {
         name: "plafond",
         value: "tussenwoning"
      },
      {
         name: "plafond",
         value: "tweekapper"
      },
   ]

   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col w-full sm:w-3/5">
            <h3 className="sm:text-2xl text-xl">Gaat het alleen om wanden? Of ook plafonds?</h3>
            <div className="mt-6 flex flex-col gap-6">
               <div className="grid gap-2 grid-cols-2">
                  {plafonds.map(plafond => (
                     <RadioImage
                        name={plafond.name}
                        value={plafond.value}
                        onChange={() => update({
                           step3: {
                              ...formData.step3,
                              [plafond.name]: plafond.value
                           }
                        })}
                        checked={formData.step3 && formData.step3[plafond.name] === plafond.value}
                     />
                  ))}
               </div>
               <Radio 
                  label={"Schikt uw woning over een uitbouw?"}
                  name={"uitbouw"}
                  values={["ja", "nee"]}
                  onChange={(e) => {
                     update({
                        step3: {
                           ...formData.step3,
                           "uitbouw": e.target.value
                        }
                     })
                  }}
                  checked={formData.step3?.uitbouw}
               />
               <Radio 
                  label={"Beschikt uw woning over een inpandige garage?"}
                  name={"inpandige_garage"}
                  onChange={(e) => {
                     update({
                        step3: {
                           ...formData.step3,
                           "inpandige_garage": e.target.value
                        }
                     })
                  }}
                  checked={formData.step3?.inpandige_garage}
                  values={["ja", "nee"]}
               />
            </div>
         </div>
      </div>
   )
}