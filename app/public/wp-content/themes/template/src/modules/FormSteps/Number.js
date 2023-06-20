export default ({
   name,
   value,
   label,
   unit
}) => {
   return (
      <div className="flex flex-col text-lg items-start">
         <p className="font-semibold">{label}</p>
         <div className="mt-1 w-32 relative">
            <input 
               type="number" 
               className="block bg-gray-100 rounded py-2 px-4 pr-12 placeholder-gray-900 border-0 w-full text-right ring-0"
               name={name} 
               id={name} 
               value={value}
            />
            <span className="pointer-events-none text-base absolute inset-y-0 right-0 flex items-center pr-3">
               {unit}
            </span>
         </div>
      </div>
   )
}