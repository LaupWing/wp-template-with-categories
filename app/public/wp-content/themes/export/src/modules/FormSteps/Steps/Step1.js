import RadioImage from "../RadioImage"

export default ({
   update,
   formData
}) => {
   const soorten = [
      {
         name: "soort",
         value: "nieuwbouw"
      },
      {
         name: "soort",
         value: "renovatie"
      },
   ]

   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col w-full sm:w-3/5">
            <h3 className="sm:text-2xl text-xl">Betreft het nieuwbouw of een renovatie woning?</h3>
            <div className="flex-1 flex mt-6 gap-2 items-start">
               {soorten.map(soort => (
                  <RadioImage
                     name={soort.name}
                     value={soort.value}
                     onChange={() => update({
                        step1:{
                           [soort.name]: soort.value
                        }
                     })}
                     checked={formData.step1 && formData.step1[soort.name] === soort.value}
                  />
               ))}
            </div>
         </div>
      </div>
   )
}