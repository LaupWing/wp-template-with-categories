import RadioImage from "../RadioImage"

export default ({
   update,
   formData
}) => {
   const types = [
      {
         name: "type",
         value: "tussenwoning"
      },
      {
         name: "type",
         value: "tweekapper"
      },
      {
         name: "type",
         value: "hoekwoning"
      },
      {
         name: "type",
         value: "vrijstaand"
      },
      {
         name: "type",
         value: "appartement"
      },
      {
         name: "type",
         value: "anders"
      },
   ]

   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col w-full sm:w-3/5">
            <h3 className="sm:text-2xl text-xl">Betreft het nieuwbouw of een renovatie woning?</h3>
            <div className="grid mt-6 gap-2 grid-cols-2 sm:grid-cols-3">
               {types.map(type => (
                  <RadioImage
                     name={type.name}
                     value={type.value}
                     onChange={() => update({
                        step2: {
                           [type.name]: type.value
                        }
                     })}
                     checked={formData.step2 && formData.step2[type.name] === type.value}
                  />
               ))}
            </div>
         </div>
      </div>
   )
}