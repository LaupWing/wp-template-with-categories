import RadioImage from "../RadioImage"

export default () => {
   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col">
            <h3 className="text-2xl">Betreft het nieuwbouw of een renovatie woning?</h3>
            <div className="flex-1 flex mt-6 gap-2 items-start">
               <RadioImage
                  name={"soort"}
                  value={"nieuwbouw"}
               />
               <RadioImage 
                  name={"soort"}
                  value={"renovatie"}
               />
            </div>
         </div>
      </div>
   )
}