export default ({
   name,
   value,
   label
}) => {
   return (
      <div className="flex flex-col text-lg items-start">
         <p className="font-semibold">{label}</p>
         <input 
            type="text" 
            className="bg-gray-100 rounded placeholder-gray-900 w-full"
            name={name} 
            id={name} 
            value={value}
         />
      </div>
   )
}