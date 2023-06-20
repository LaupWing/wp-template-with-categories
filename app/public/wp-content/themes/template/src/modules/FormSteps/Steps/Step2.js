import RadioImage from "../RadioImage"

export default ({
   update
}) => {
   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col w-full sm:w-3/5">
            <h3 className="text-2xl">Betreft het nieuwbouw of een renovatie woning?</h3>
            <div className="grid mt-6 gap-2 grid-cols-3">
               <RadioImage
                  name={"type"}
                  onChange={() => update({
                     type: "tussenwoning"
                  })}
                  value={"tussenwoning"}
               />
               <RadioImage 
                  name={"type"}
                  value={"tweekapper"}
                  onChange={() => update({
                     type: "tweekapper"
                  })}
               />
               <RadioImage
                  name={"type"}
                  value={"hoekwoning"}
                  onChange={() => update({
                     type: "hoekwoning"
                  })}
               />
               <RadioImage 
                  name={"type"}
                  value={"vrijstaand"}
                  onChange={() => update({
                     type: "vrijstaand"
                  })}
               />
               <RadioImage
                  name={"type"}
                  value={"appartement"}
                  onChange={() => update({
                     type: "appartement"
                  })}
               />
               <RadioImage 
                  name={"type"}
                  value={"anders"}
                  onChange={() => update({
                     type: "anders"
                  })}
               />
            </div>
         </div>
      </div>
   )
}