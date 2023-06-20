const {render, useState} = wp.element
import Step1 from "./Steps/Step1"
import Step2 from "./Steps/Step2"
import Step3 from "./Steps/Step3"

const FormSteps = () => {
   const [formData, setFormData] = useState({
      soort: null,
      type: null,
      plafonds: null,
      dak: null,
      details: null,
      gebruiker: null
   })
   // Object.values(formData).filter(x => x).length
   const [currentStep, setCurrentStep] = useState(2)
   
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
         </div>
         <form 
            action=""
            className="p-4 pt-6 flex-1 flex flex-col"
         >
            {currentStep === 0 && <Step1 />}
            {currentStep === 1 && <Step2 />}
            {currentStep === 2 && <Step3 />}
            <div className="mt-auto mx-auto flex gap-2">
               <button className="w-24 py-1 ml-4 font-bold rounded border-2 text-accent-2 border-accent-2">
                  Vorige
               </button>
               <button 
                  className="w-24 py-1 ml-4 font-bold rounded bg-accent-2 text-main"
               >
                  Volgende
               </button>
            </div>
         </form>
      </section>
   )
}

render(<FormSteps/>, document.getElementById("form-steps"))