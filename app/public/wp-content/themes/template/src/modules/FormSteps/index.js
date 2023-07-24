const {render, useState, useEffect} = wp.element
import Step1 from "./Steps/Step1"
import Step2 from "./Steps/Step2"
import Step3 from "./Steps/Step3"
import Step4 from "./Steps/Step4"
import Step5 from "./Steps/Step5"
import Step6 from "./Steps/Step6"
import Step7 from "./Steps/Step7"

const stepsSkelet = {
   step1: {
      soort: null
   },
   step2: {
      type: null
   },
   step3: {
      plafond: null,
      uitbouw: null,
      inpandige_garage: null
   },
   step4: {
      dak: null
   },
   step5: {
      woonoppervlak: null,
      plafondhoogte: null,
      verdiepingen: null,
      bovenste_verdieping_binnenwanden: null
   },
   step6: {
      email: null,
      phonenumber: null,
      firstname: null,
      lastname: null,
      date: null
   },
}

const FormSteps = () => {
   const [formData, setFormData] = useState({
      step1: null,
      step2: null,
      step3: null,
      step4: null,
      step5: null,
      step6: null,
      ...(localStorage.getItem("formData") ? 
         JSON.parse(localStorage.getItem("formData")) : {}
      )
   })
   
   const [currentStep, setCurrentStep] = useState(0)
   
   const update = (e) => {
      setFormData(prev => ({
         ...prev,
         ...e
      }))
   }
   
   useEffect(() => {
      localStorage.setItem("formData", JSON.stringify(formData))
   }, [formData])

   const getUnfinishedIndex = (data) => {
      if(Object.keys(data).every((key) => {
         if(Object.keys(stepsSkelet[key]).every(x => data[key] && data[key][x])){
            return key
         }
      })){
         return Object.keys(stepsSkelet).length
      }
      return Object.keys(data).findIndex((key) => {
         if(!Object.keys(stepsSkelet[key]).every(x => data[key] && data[key][x])){
            return key
         }
      })
   }
   
   useEffect(() => {
      if(localStorage.getItem("formData")){
         const data = JSON.parse(localStorage.getItem("formData"))
         const index = getUnfinishedIndex(data)
         setCurrentStep(index)
      }
   }, [])
   
   return (
      <section className="flex-1 flex flex-col bg-main my-10 rounded shadow p-10">
         <div className="mb-4">
            <h2 className="md:text-3xl sm:text-2xl text-xl">Binnen 1 minuut uw project berekenen?</h2>
         </div>
         <div className="flex w-full gap-2">
            {[...new Array(7)].map((_, i) => (
               <div 
                  className={`sm:h-2 h-1 cursor-pointer flex-1 ${
                     i <= currentStep 
                        ? i === currentStep 
                           ? "bg-accent-1" 
                           : "bg-accent-1/40" 
                        : i > getUnfinishedIndex(formData) 
                           ? "bg-gray-300"
                           : "bg-accent-1/40"} 
                  `}
                  onClick={() => {
                     setCurrentStep(i)
                     if(Object.values(formData).filter(x => x).length >= i){
                     }
                  }}
               />
            ))}
         </div>
         <form 
            action=""
            className="sm:p-4 pt-6 flex-1 flex flex-col"
         >
            {currentStep === 0 && <Step1 formData={formData} update={update} />}
            {currentStep === 1 && <Step2 formData={formData} update={update} />}
            {currentStep === 2 && <Step3 formData={formData} update={update} />}
            {currentStep === 3 && <Step4 formData={formData} update={update} />}
            {currentStep === 4 && <Step5 formData={formData} update={update} />}
            {currentStep === 5 && <Step6 formData={formData} update={update} />}
            {currentStep === 6 && <Step7 formData={formData} />}
            <div className="mt-6 mx-auto flex gap-2">
               <button 
                  type="button"
                  className={currentStep === 0 ? 
                     "w-24 py-1 ml-4 font-bold rounded border-2 bg-gray-200 text-gray-300 border-gray-300 pointer-events-none" : 
                     "w-24 py-1 ml-4 font-bold rounded border-2 text-accent-2 border-accent-2"
                  }
                  onClick={() => setCurrentStep(prev => prev - 1)}
               >
                  Vorige
               </button>
               <button 
                  type="button"
                  className={getUnfinishedIndex(formData) <= currentStep ? 
                     "w-24 py-1 ml-4 font-bold rounded border-2 bg-gray-200 text-gray-300 border-gray-300 pointer-events-none" : 
                     "w-24 py-1 ml-4 font-bold rounded bg-accent-2 text-main"
                  }
                  onClick={() => setCurrentStep(prev => prev + 1)}
               >
                  Volgende
               </button>
            </div>
         </form>
      </section>
   )
}

render(<FormSteps/>, document.getElementById("form-steps"))