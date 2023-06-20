const {render, useState} = wp.element
import RadioImage from "./RadioImage"

const FormSteps = () => {
   const [formData, setFormData] = useState({
      soort: null,
      type: null,
      plafonds: null,
      dak: null,
      details: null,
      gebruiker: null
   })
   const currentStep = Object.values(formData).filter(x => x).length
   
   return (
      <section className="flex-1 flex flex-col bg-main my-10 rounded shadow p-10">
         <div className="mb-4">
            <h2 className="text-3xl">Binnen 1 minuut uw project berekenen?</h2>
         </div>
         <div className="flex w-full gap-2">
            {[...new Array(7)].map((_, i) => (
               <div 
                  className={`h-2 ${i <= currentStep ? "bg-accent-1" : "bg-gray-300"} flex-1`}
               />
            ))}
            {/* <div className="h-2 bg-accent-1 flex-1"></div>
            <div className="h-2 bg-gray-300 flex-1"></div>
            <div className="h-2 bg-gray-300 flex-1"></div>
            <div className="h-2 bg-gray-300 flex-1"></div>
            <div className="h-2 bg-gray-300 flex-1"></div>
            <div className="h-2 bg-gray-300 flex-1"></div> */}
         </div>
         <form 
            action=""
            className="p-4 pt-6 flex-1 flex flex-col"
         >
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
            <div className="mt-auto mx-auto flex gap-2">
               <button className="w-24 py-1 ml-4 font-bold rounded border-2 text-accent-2 border-accent-2">
                  Vorige
               </button>
               <button className="w-24 py-1 ml-4 font-bold rounded bg-accent-2 text-main">
                  Volgende
               </button>
            </div>
         </form>
      </section>
   )
}

render(<FormSteps/>, document.getElementById("form-steps"))