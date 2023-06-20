import RadioImage from "../RadioImage"

export default ({
   update,
   formData
}) => {
   const choices = [
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
            <h3 className="text-2xl">Betreft het nieuwbouw of een renovatie woning?</h3>
            <div className="grid mt-6 gap-2 grid-cols-3">
               {choices.map(choice => (
                  <RadioImage
                     name={choice.name}
                     value={choice.value}
                     onChange={() => update({
                        [choice.name]: choice.value
                     })}
                     checked={formData[choice.name] === choice.value}
                  />
               ))}
            </div>
         </div>
      </div>
   )
}