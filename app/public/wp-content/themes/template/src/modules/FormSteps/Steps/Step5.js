import Number from "../Number"
import Radio from "../Radio"

export default ({
   formData,
   update
}) => {
   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col">
            <div className="mt-6 flex flex-col gap-6 w-full sm:w-3/5">
               <Number
                  label={"Hoeveel m2 woonoppervlak heeft uw woning? *"}
                  value={formData.step5?.woonoppervlak || ""}
                  onChange={(e) => {
                     update({
                        step5: {
                           ...formData.step5,
                           woonoppervlak: e.target.value
                        }
                     })
                  }}
                  name={"woonoppervlak"}
                  unit={"m2"}
               />
               <Number
                  label={"Wat is uw plafondhoogte? *"}
                  value={formData.step5?.plafondhoogte || 250}
                  name={"plafondhoogte"}
                  onChange={(e) => {
                     update({
                        step5: {
                           ...formData.step5,
                           plafondhoogte: e.target.value
                        }
                     })
                  }}
                  unit={"cm"}
               />
               <Radio 
                  label={"Hoeveel verdiepingen heeft uw woning? *"}
                  name={"verdiepingen"}
                  onChange={(e) => {
                     update({
                        step5: {
                           ...formData.step5,
                           verdiepingen: e.target.value
                        }
                     })
                  }}
                  checked={formData.step5?.verdiepingen}
                  values={["1", "2", "3", "4"]}
               />
               <Radio 
                  label={"Heeft uw bovenste verdieping binnenwanden? *"}
                  name={"bovenste_verdieping_binnenwanden"}
                  onChange={(e) => {
                     update({
                        step5: {
                           ...formData.step5,
                           bovenste_verdieping_binnenwanden: e.target.value
                        }
                     })
                  }}
                  checked={formData.step5?.bovenste_verdieping_binnenwanden}
                  values={["ja", "nee"]}
               />
            </div>
         </div>
      </div>
   )
}