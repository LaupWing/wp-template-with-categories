"use strict";(globalThis.webpackChunktemplate=globalThis.webpackChunktemplate||[]).push([[721],{721:(e,a,t)=>{t.r(a);var l=t(307);const n=({value:e,name:a,onChange:t,checked:n})=>{const m=window.customData.placeholderImage;return(0,l.createElement)("label",{for:e},(0,l.createElement)("input",{type:"radio",name:a,id:e,className:"hidden peer",value:e,onChange:t,checked:n}),(0,l.createElement)("div",{className:"cursor-pointer w-24 h-24 sm:w-40 sm:h-40 peer-checked:bg-accent-1/10 bg-gray-100 border-[4px] border-gray-200 peer-checked:border-accent-1 flex flex-col items-center justify-center opacity-50 peer-checked:opacity-100"},(0,l.createElement)("img",{src:m,alt:e,className:"w-full"}),(0,l.createElement)("p",{className:"sm:text-lg text-xs capitalize"},e)))},m=({update:e,formData:a})=>(0,l.createElement)("div",{className:"flex flex-1"},(0,l.createElement)("div",{className:"flex-1 flex items-center flex-col w-full sm:w-3/5"},(0,l.createElement)("h3",{className:"sm:text-2xl text-xl"},"Betreft het nieuwbouw of een renovatie woning?"),(0,l.createElement)("div",{className:"flex-1 flex mt-6 gap-2 items-start"},[{name:"soort",value:"nieuwbouw"},{name:"soort",value:"renovatie"}].map((t=>(0,l.createElement)(n,{name:t.name,value:t.value,onChange:()=>e({step1:{[t.name]:t.value}}),checked:a.step1&&a.step1[t.name]===t.value})))))),r=({update:e,formData:a})=>(0,l.createElement)("div",{className:"flex flex-1"},(0,l.createElement)("div",{className:"flex-1 flex items-center flex-col w-full sm:w-3/5"},(0,l.createElement)("h3",{className:"sm:text-2xl text-xl"},"Betreft het nieuwbouw of een renovatie woning?"),(0,l.createElement)("div",{className:"grid mt-6 gap-2 grid-cols-2 sm:grid-cols-3"},[{name:"type",value:"tussenwoning"},{name:"type",value:"tweekapper"},{name:"type",value:"hoekwoning"},{name:"type",value:"vrijstaand"},{name:"type",value:"appartement"},{name:"type",value:"anders"}].map((t=>(0,l.createElement)(n,{name:t.name,value:t.value,onChange:()=>e({step2:{[t.name]:t.value}}),checked:a.step2&&a.step2[t.name]===t.value})))))),s=({name:e,values:a,label:t,onChange:n,checked:m})=>(0,l.createElement)("div",{className:"flex flex-col sm:text-lg"},(0,l.createElement)("p",{className:"font-semibold"},t),(0,l.createElement)("div",{className:"flex gap-4 mt-1"},a.map((a=>(0,l.createElement)(c,{value:a,name:e,onChange:n,checked:m}))))),c=({value:e,name:a,onChange:t,checked:n})=>{const m=`${a}_${e}`;return(0,l.createElement)("div",{className:"flex gap-2 items-center text-2"},(0,l.createElement)("input",{type:"radio",name:a,id:m,value:e,onChange:t,checked:n===e}),(0,l.createElement)("label",{htmlFor:m,className:"capitalize"},e))},o=({formData:e,update:a})=>(0,l.createElement)("div",{className:"flex flex-1"},(0,l.createElement)("div",{className:"flex-1 flex items-center flex-col w-full sm:w-3/5"},(0,l.createElement)("h3",{className:"sm:text-2xl text-xl"},"Gaat het alleen om wanden? Of ook plafonds?"),(0,l.createElement)("div",{className:"mt-6 flex flex-col gap-6"},(0,l.createElement)("div",{className:"grid gap-2 grid-cols-2"},[{name:"plafond",value:"tussenwoning"},{name:"plafond",value:"tweekapper"}].map((t=>(0,l.createElement)(n,{name:t.name,value:t.value,onChange:()=>a({step3:{...e.step3,[t.name]:t.value}}),checked:e.step3&&e.step3[t.name]===t.value})))),(0,l.createElement)(s,{label:"Schikt uw woning over een uitbouw?",name:"uitbouw",values:["ja","nee"],onChange:t=>{a({step3:{...e.step3,uitbouw:t.target.value}})},checked:e.step3?.uitbouw}),(0,l.createElement)(s,{label:"Beschikt uw woning over een inpandige garage?",name:"inpandige_garage",onChange:t=>{a({step3:{...e.step3,inpandige_garage:t.target.value}})},checked:e.step3?.inpandige_garage,values:["ja","nee"]})))),p=({formData:e,update:a})=>(0,l.createElement)("div",{className:"flex flex-1"},(0,l.createElement)("div",{className:"flex-1 flex items-center flex-col w-full sm:w-3/5"},(0,l.createElement)("h3",{className:"sm:text-2xl text-xl"},"Betreft het nieuwbouw of een renovatie woning?"),(0,l.createElement)("div",{className:"grid mt-6 gap-2 sm:grid-cols-3 grid-cols-2"},[{name:"dak",value:"puntdak"},{name:"dak",value:"plat dak"},{name:"dak",value:"anders"}].map((t=>(0,l.createElement)(n,{name:t.name,value:t.value,onChange:()=>a({step4:{[t.name]:t.value}}),checked:e.step4&&e.step4[t.name]===t.value})))))),i=({name:e,value:a,label:t,unit:n,onChange:m})=>(0,l.createElement)("div",{className:"flex flex-col sm:text-lg items-start"},(0,l.createElement)("p",{className:"font-semibold"},t),(0,l.createElement)("div",{className:"mt-1 w-32 relative"},(0,l.createElement)("input",{type:"number",className:"block bg-gray-100 rounded py-2 px-4 pr-12 placeholder-gray-900 border-0 w-full text-right ring-0",name:e,id:e,value:a,onChange:m}),(0,l.createElement)("span",{className:"pointer-events-none text-base absolute inset-y-0 right-0 flex items-center pr-3"},n))),u=({formData:e,update:a})=>(0,l.createElement)("div",{className:"flex flex-1"},(0,l.createElement)("div",{className:"flex-1 flex items-center flex-col"},(0,l.createElement)("div",{className:"mt-6 flex flex-col gap-6 w-full sm:w-3/5"},(0,l.createElement)(i,{label:"Hoeveel m2 woonoppervlak heeft uw woning? *",value:e.step5?.woonoppervlak||"",onChange:t=>{a({step5:{...e.step5,woonoppervlak:t.target.value}})},name:"woonoppervlak",unit:"m2"}),(0,l.createElement)(i,{label:"Wat is uw plafondhoogte? *",value:e.step5?.plafondhoogte,name:"plafondhoogte",onChange:t=>{a({step5:{...e.step5,plafondhoogte:t.target.value}})},unit:"cm"}),(0,l.createElement)(s,{label:"Hoeveel verdiepingen heeft uw woning? *",name:"verdiepingen",onChange:t=>{a({step5:{...e.step5,verdiepingen:t.target.value}})},checked:e.step5?.verdiepingen,values:["1","2","3","4"]}),(0,l.createElement)(s,{label:"Heeft uw bovenste verdieping binnenwanden? *",name:"bovenste_verdieping_binnenwanden",onChange:t=>{a({step5:{...e.step5,bovenste_verdieping_binnenwanden:t.target.value}})},checked:e.step5?.bovenste_verdieping_binnenwanden,values:["ja","nee"]}))));function d(){return d=Object.assign?Object.assign.bind():function(e){for(var a=1;a<arguments.length;a++){var t=arguments[a];for(var l in t)Object.prototype.hasOwnProperty.call(t,l)&&(e[l]=t[l])}return e},d.apply(this,arguments)}const g=({name:e,value:a,label:t,type:n="text",className:m="",...r})=>(0,l.createElement)("div",{className:"flex flex-col sm:text-lg items-start "+m},(0,l.createElement)("p",{className:"font-semibold"},t),(0,l.createElement)("input",d({type:n},r,{className:"bg-gray-100 py-1 rounded placeholder-gray-900 w-full border-gray-200",name:e,id:e,value:a}))),v=()=>(0,l.createElement)("div",{className:"flex flex-1"},(0,l.createElement)("div",{className:"flex-1 flex items-center flex-col"},(0,l.createElement)("div",{className:"mt-6 grid grid-cols-2 gap-6 w-full sm:w-3/5"},(0,l.createElement)(g,{label:"E-mailadres *",name:"email",value:"",className:"col-span-2 sm:col-span-1",type:"email"}),(0,l.createElement)(g,{label:"Telefoonnummer *",name:"telefoonnummer",value:"",className:"col-span-2 sm:col-span-1",type:"email"}),(0,l.createElement)(g,{label:"Voornaam *",name:"voornaam",className:"col-span-2 sm:col-span-1",value:""}),(0,l.createElement)(g,{label:"Achternaam *",name:"achternaam",className:"col-span-2 sm:col-span-1",value:""}),(0,l.createElement)(g,{label:"Opmerkingen/bijzonderheden?",name:"opmerkingen",value:"",className:"col-span-2"}),(0,l.createElement)(g,{label:"Wat is de prognose opleverdatum? *",name:"datum",type:"date",value:"",className:"col-span-2"})))),{render:f,useState:x,useEffect:b}=wp.element,h={step1:{soort:null},step2:{type:null},step3:{plafond:null,uitbouw:null,inpandige_garage:null},step4:{dak:null},step5:{woonoppervlak:null,plafondhoogte:null,verdiepingen:null,bovenste_verdieping_binnenwanden:null},step6:{email:null,telefoonnummer:null,achternaam:null,opmerkingen:null,datum:null}};f((0,l.createElement)((()=>{const[e,a]=x({step1:null,step2:null,step3:null,step4:null,step5:null,step6:null,...localStorage.getItem("formData")?JSON.parse(localStorage.getItem("formData")):{}}),[t,n]=x(0),s=e=>{a((a=>({...a,...e})))};b((()=>{localStorage.setItem("formData",JSON.stringify(e))}),[e]);const c=e=>Object.keys(e).findIndex((a=>{if(!Object.keys(h[a]).every((t=>e[a]&&e[a][t])))return a}));return b((()=>{if(localStorage.getItem("formData")){const e=JSON.parse(localStorage.getItem("formData")),a=c(e);n(a)}}),[]),(0,l.createElement)("section",{className:"flex-1 flex flex-col bg-main my-10 rounded shadow p-10"},(0,l.createElement)("div",{className:"mb-4"},(0,l.createElement)("h2",{className:"md:text-3xl sm:text-2xl text-xl"},"Binnen 1 minuut uw project berekenen?")),(0,l.createElement)("div",{className:"flex w-full gap-2"},[...new Array(7)].map(((a,m)=>(0,l.createElement)("div",{className:`sm:h-2 h-1 cursor-pointer flex-1 ${m<=t?m===t?"bg-accent-1":"bg-accent-1/40":m>c(e)?"bg-gray-300":"bg-accent-1/40"} \n                  `,onClick:()=>{n(m),Object.values(e).filter((e=>e)).length}})))),(0,l.createElement)("form",{action:"",className:"p-4 pt-6 flex-1 flex flex-col"},0===t&&(0,l.createElement)(m,{formData:e,update:s}),1===t&&(0,l.createElement)(r,{formData:e,update:s}),2===t&&(0,l.createElement)(o,{formData:e,update:s}),3===t&&(0,l.createElement)(p,{formData:e,update:s}),4===t&&(0,l.createElement)(u,{formData:e,update:s}),5===t&&(0,l.createElement)(v,{formData:e,update:s}),(0,l.createElement)("div",{className:"mt-6 mx-auto flex gap-2"},(0,l.createElement)("button",{type:"button",className:0===t?"w-24 py-1 ml-4 font-bold rounded border-2 bg-gray-200 text-gray-300 border-gray-300 pointer-events-none":"w-24 py-1 ml-4 font-bold rounded border-2 text-accent-2 border-accent-2",onClick:()=>n((e=>e-1))},"Vorige"),(0,l.createElement)("button",{type:"button",className:c(e)<=t?"w-24 py-1 ml-4 font-bold rounded border-2 bg-gray-200 text-gray-300 border-gray-300 pointer-events-none":"w-24 py-1 ml-4 font-bold rounded bg-accent-2 text-main",onClick:()=>n((e=>e+1))},"Volgende"))))}),null),document.getElementById("form-steps"))}}]);