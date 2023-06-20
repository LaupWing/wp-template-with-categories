export default ({
   name,
   values,
   label,
   onChange,
   checked
}) => {
   return (
      <div className="flex flex-col text-lg">
         <p className="font-semibold">{label}</p>
         <div className="flex gap-4 mt-1">
            {values.map(value => (
               <Option 
                  value={value}
                  name={name}
                  onChange={onChange}
                  checked={checked}
               />
            ))}
         </div>
      </div>
   )
}

const Option = ({
   value,
   name,
   onChange,
   checked
}) => {
   const id = `${name}_${value}` 
   return (
      <div className="flex gap-2 items-center text-2">
         <input 
            type="radio" 
            name={name} 
            id={id} 
            value={value}
            onChange={onChange}
            checked={checked === value}
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