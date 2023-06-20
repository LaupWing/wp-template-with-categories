import Text from "../Text"

export default () => {
   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col">
            <div className="mt-6 grid grid-cols-2 gap-6 w-full sm:w-3/5">
               <Text
                  label={"E-mailadres *"}
                  name={"email"}
                  value={""}
                  type="email"
               />
               <Text
                  label={"Telefoonnummer *"}
                  name={"email"}
                  value={""}
                  type="email"
               />
               <Text
                  label={"Voornaam *"}
                  name={"email"}
                  value={""}
               />
               <Text
                  label={"Achternaam *"}
                  name={"email"}
                  value={""}
               />
               <Text
                  label={"Opmerkingen/bijzonderheden?"}
                  name={"email"}
                  value={""}
                  className="col-span-2"
               />
               <Text
                  label={"Wat is de prognose opleverdatum? *"}
                  name={"email"}
                  type="date"
                  value={""}
                  className="col-span-2"
               />
            </div>
         </div>
      </div>
   )
}