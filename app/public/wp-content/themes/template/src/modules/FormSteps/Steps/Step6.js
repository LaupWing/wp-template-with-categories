import Text from "../Text"

export default ({
   formData,
   update
}) => {
   return (
      <div className="flex flex-1">
         <div className="flex-1 flex items-center flex-col">
            <div className="mt-6 grid grid-cols-2 gap-6 w-full sm:w-3/5">
               <Text
                  label={"E-mailadres *"}
                  name={"email"}
                  value={formData.step6?.email || ""}
                  className="col-span-2 sm:col-span-1"
                  type="email"
               />
               <Text
                  label={"Telefoonnummer *"}
                  name={"telefoonnummer"}
                  value={""}
                  className="col-span-2 sm:col-span-1"
                  type="email"
               />
               <Text
                  label={"Voornaam *"}
                  name={"voornaam"}
                  className="col-span-2 sm:col-span-1"
                  value={""}
               />
               <Text
                  label={"Achternaam *"}
                  name={"achternaam"}
                  className="col-span-2 sm:col-span-1"
                  value={""}
               />
               <Text
                  label={"Opmerkingen/bijzonderheden?"}
                  name={"opmerkingen"}
                  value={""}
                  className="col-span-2"
               />
               <Text
                  label={"Wat is de prognose opleverdatum? *"}
                  name={"datum"}
                  type="date"
                  value={""}
                  className="col-span-2"
               />
            </div>
         </div>
      </div>
   )
}