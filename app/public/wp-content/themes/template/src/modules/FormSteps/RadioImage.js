export default ({
   value,
   name,
   onChange
}) => {
   return (
      <label 
         for={value}
      >
         <input 
            type="radio" 
            name={name} 
            id={value}
            className="hidden peer"
            value={value}
            onChange={onChange}
         />
         <div className="cursor-pointer w-48 h-48 peer-checked:bg-accent-1/10 bg-gray-100 border-[4px] border-gray-200 peer-checked:border-accent-1 flex flex-col items-center justify-center opacity-50 peer-checked:opacity-100">
            <img 
               src="http://template-with-categories.local/wp-content/themes/template/images/placeholder_image.png" 
               alt={value}
               className="w-full"
            />
            <p className="text-lg capitalize">{value}</p>
         </div>
      </label>
   )
}