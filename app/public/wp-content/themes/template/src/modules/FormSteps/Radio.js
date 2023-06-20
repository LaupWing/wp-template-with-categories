export default ({
   name,
   values,
   label
}) => {
   return (
      <div className="flex flex-col text-lg">
         <p className="font-semibold">{label}</p>
         <div className="flex gap-4 mt-1">
            {values.map(value => (
               <Option 
                  value={value}
                  name={name}
               />
            ))}
         </div>
      </div>
   )
}

const Option = ({
   value,
   name
}) => {
   const id = `${name}_${value}` 
   return (
      <div className="flex gap-2 items-center text-2">
         <input 
            type="radio" 
            name={name} 
            id={id} 
            value={value}
         />
         <label 
            htmlFor={id}
            className="capitalize"
         >
            {value}
         </label>
      </div>
   )
}