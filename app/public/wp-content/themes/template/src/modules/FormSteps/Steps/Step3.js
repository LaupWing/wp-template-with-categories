import Radio from "../Radio"
import RadioImage from "../RadioImage"

export default () => {
   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col">
            <h3 className="text-2xl">Gaat het alleen om wanden? Of ook plafonds?</h3>
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
               <Radio 
                  label={"Schikt uw woning over een uitbouw?"}
                  name={"uitbouw"}
                  values={["ja", "nee"]}
               />
               <Radio 
                  label={"Beschikt uw woning over een inpandige garage?"}
                  name={"inpandige_garage"}
                  values={["ja", "nee"]}
               />
            </div>
         </div>
      </div>
   )
}