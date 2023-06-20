const {render, useState} = wp.element

const FormSteps = () => {
   return (
      <section className="flex-1 flex flex-col bg-main my-10 rounded shadow p-10">
         <div className="mb-4">
            <h2 className="text-3xl">Binnen 1 minuut uw project berekenen?</h2>
         </div>
         <div className="flex w-full gap-2">
            <div className="h-2 bg-accent-1 flex-1"></div>
            <div className="h-2 bg-gray-300 flex-1"></div>
            <div className="h-2 bg-gray-300 flex-1"></div>
            <div className="h-2 bg-gray-300 flex-1"></div>
            <div className="h-2 bg-gray-300 flex-1"></div>
            <div className="h-2 bg-gray-300 flex-1"></div>
            <div className="h-2 bg-gray-300 flex-1"></div>
         </div>
         <form 
            action=""
            className="p-4 pt-6 flex-1 flex flex-col"
         >
            <div className="flex flex-1">
               <div className="flex-1 flex items-center flex-col">
                  <h3 className="text-2xl">Betreft het nieuwbouw of een renovatie woning?</h3>
                  <div className="flex-1 flex mt-6 gap-2 items-start">
                     <label 
                        for="nieuwbouw"
                     >
                        <input 
                           type="radio" 
                           name="soort" 
                           id="nieuwbouw"
                           className="hidden peer"
                           value="nieuwbouw"
                        />
                        <div className="cursor-pointer w-48 h-48 peer-checked:bg-accent-1/10 bg-gray-100 border-[4px] border-gray-200 peer-checked:border-accent-1 flex flex-col items-center justify-center opacity-50 peer-checked:opacity-100">
                           <img 
                              src="http://template-with-categories.local/wp-content/themes/template/images/placeholder_image.png" 
                              alt="Nieuwbouw"
                              className="w-full"
                           />
                           <p className="text-lg">Nieuwbouw</p>
                        </div>
                     </label>
                     <label
                        for="renovatie"
                     >
                        <input 
                           type="radio" 
                           name="soort" 
                           id="renovatie"
                           className="hidden peer"
                           value="renovatie"
                        />
                        <div className="cursor-pointer w-48 h-48 peer-checked:bg-accent-1/10 bg-gray-100 border-[4px] border-gray-200 peer-checked:border-accent-1 flex flex-col items-center justify-center opacity-50 peer-checked:opacity-100">
                           <img 
                              src="http://template-with-categories.local/wp-content/themes/template/images/placeholder_image.png" 
                              alt="Renovatie"
                              className="w-full"
                           />
                           <p className="text-lg">Renovatie</p>
                        </div>
                     </label>
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