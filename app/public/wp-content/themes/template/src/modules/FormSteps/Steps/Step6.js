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
                  onChange={(e) => {
                     update({
                        step6: {
                           ...formData.step6,
                           email: e.target.value
                        }
                     })
                  }}
                  className="col-span-2 sm:col-span-1"
                  type="email"
               />
               <Text
                  label={"Telefoonnummer *"}
                  name={"telefoonnummer"}
                  value={formData.step6?.phonenumber || ""}
                  onChange={(e) => {
                     update({
                        step6: {
                           ...formData.step6,
                           phonenumber: e.target.value
                        }
                     })
                  }}
                  className="col-span-2 sm:col-span-1"
                  type="text"
               />
               <Text
                  label={"Voornaam *"}
                  name={"voornaam"}
                  className="col-span-2 sm:col-span-1"
                  value={formData.step6?.firstname || ""}
                  onChange={(e) => {
                     update({
                        step6: {
                           ...formData.step6,
                           firstname: e.target.value
                        }
                     })
                  }}
                  type="text"
               />
               <Text
                  label={"Achternaam *"}
                  name={"achternaam"}
                  className="col-span-2 sm:col-span-1"
                  value={formData.step6?.lastname || ""}
                  onChange={(e) => {
                     update({
                        step6: {
                           ...formData.step6,
                           lastname: e.target.value
                        }
                     })
                  }}
                  type="text"
               />
               <Text
                  label={"Opmerkingen/bijzonderheden?"}
                  name={"opmerkingen"}
                  value={formData.step6?.comments || ""}
                  onChange={(e) => {
                     update({
                        step6: {
                           ...formData.step6,
                           comments: e.target.value
                        }
                     })
                  }}
                  type="text"
                  className="col-span-2"
               />
               <Text
                  label={"Wat is de prognose opleverdatum? *"}
                  name={"datum"}
                  type="date"
                  value={formData.step6?.date || ""}
                  onChange={(e) => {
                     update({
                        step6: {
                           ...formData.step6,
                           date: e.target.value
                        }
                     })
                  }}
                  className="col-span-2"
               />
            </div>
         </div>
      </div>
   )
}