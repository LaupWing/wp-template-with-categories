import RadioImage from "../RadioImage"

export default ({
   formData,
   update
}) => {
   const daken = [
      {
         name: "dak",
         value: "puntdak"
      },
      {
         name: "dak",
         value: "plat dak"
      },
      {
         name: "dak",
         value: "anders"
      },
   ]

   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col w-full sm:w-3/5">
            <h3 className="sm:text-2xl text-xl">Betreft het nieuwbouw of een renovatie woning?</h3>
            <div className="grid mt-6 gap-2 sm:grid-cols-3 grid-cols-2">
               {daken.map(type => (
                  <RadioImage
                     name={type.name}
                     value={type.value}
                     onChange={() => update({
                        step4: {
                           [type.name]: type.value
                        }
                     })}
                     checked={formData.step4 && formData.step4[type.name] === type.value}
                  />
               ))}
            </div>
         </div>
      </div>
   )
}