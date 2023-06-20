export default ({
   name,
   value,
   label,
   type = "text",
   className = "",
   ...props
}) => {
   return (
      <div className={"flex flex-col text-lg items-start " + className}>
         <p className="font-semibold">{label}</p>
         <input 
            type={type} 
            {...props}
            className="bg-gray-100 py-1 rounded placeholder-gray-900 w-full border-gray-200"
            name={name} 
            id={name} 
            value={value}
         />
      </div>
   )
}