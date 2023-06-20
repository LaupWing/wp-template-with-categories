import RadioImage from "../RadioImage"

export default ({
   update
}) => {
   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col w-full sm:w-3/5">
            <h3 className="text-2xl">Betreft het nieuwbouw of een renovatie woning?</h3>
            <div className="flex-1 flex mt-6 gap-2 items-start">
               <RadioImage
                  name={"soort"}
                  value={"nieuwbouw"}
                  onChange={() => update({
                     soort: "nieuwbouw"
                  })}
               />
               <RadioImage 
                  name={"soort"}
                  value={"renovatie"}
                  onChange={() => update({
                     soort: "renovatie"
                  })}
               />
            </div>
         </div>
      </div>
   )
}