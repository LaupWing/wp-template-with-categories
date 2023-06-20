import Number from "../Number"
import Radio from "../Radio"

export default () => {
   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col">
            <div className="mt-6 flex flex-col">
               <Number
                  label={"Hoeveel m2 woonoppervlak heeft uw woning? *"}
                  value={""}
                  name={"woonoppervlak"}
                  unit={"m2"}
               />
               <Number
                  label={"Wat is uw plafondhoogte? *"}
                  value={250}
                  name={"plafondhoogte"}
                  unit={"cm"}
               />
               <Radio 
                  label={"Hoeveel verdiepingen heeft uw woning? *"}
                  name={"verdiepingen"}
                  values={["1", "2", "3", "4"]}
               />
               <Radio 
                  label={"Heeft uw bovenste verdieping binnenwanden? *"}
                  name={"bovenste_verdieping_binnenwanden"}
                  values={["ja", "nee"]}
               />
            </div>
         </div>
      </div>
   )
}