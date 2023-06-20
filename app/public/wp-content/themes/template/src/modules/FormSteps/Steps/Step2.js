import RadioImage from "../RadioImage"

export default () => {
   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col">
            <h3 className="text-2xl">Betreft het nieuwbouw of een renovatie woning?</h3>
            <div className="grid mt-6 gap-2 grid-cols-3">
               <RadioImage
                  name={"type"}
                  value={"tussenwoning"}
               />
               <RadioImage 
                  name={"type"}
                  value={"tweekapper"}
               />
               <RadioImage
                  name={"type"}
                  value={"hoekwoning"}
               />
               <RadioImage 
                  name={"type"}
                  value={"vrijstaand"}
               />
               <RadioImage
                  name={"type"}
                  value={"appartement"}
               />
               <RadioImage 
                  name={"type"}
                  value={"anders"}
               />
            </div>
         </div>
      </div>
   )
}