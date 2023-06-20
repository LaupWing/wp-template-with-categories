import Number from "../Number"

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
            </div>
         </div>
      </div>
   )
}