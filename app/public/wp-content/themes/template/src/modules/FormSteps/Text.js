export default ({
   name,
   value,
   label,
   type = "text",
   ...props
}) => {
   return (
      <div className="flex flex-col text-lg items-start">
         <p className="font-semibold">{label}</p>
         <input 
            type={type} 
            {...props}
            className="bg-gray-100 rounded placeholder-gray-900 w-full"
            name={name} 
            id={name} 
            value={value}
         />
      </div>
   )
}