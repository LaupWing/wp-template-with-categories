"use strict";
(globalThis["webpackChunktemplate"] = globalThis["webpackChunktemplate"] || []).push([["src_modules_FormSteps_index_js"],{

/***/ "./src/modules/FormSteps/Number.js":
/*!*****************************************!*\
  !*** ./src/modules/FormSteps/Number.js ***!
  \*****************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__);

/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (({
  name,
  value,
  label,
  unit,
  onChange
}) => {
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex flex-col text-lg items-start"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("p", {
    className: "font-semibold"
  }, label), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "mt-1 w-32 relative"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("input", {
    type: "number",
    className: "block bg-gray-100 rounded py-2 px-4 pr-12 placeholder-gray-900 border-0 w-full text-right ring-0",
    name: name,
    id: name,
    value: value,
    onChange: onChange
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("span", {
    className: "pointer-events-none text-base absolute inset-y-0 right-0 flex items-center pr-3"
  }, unit)));
});

/***/ }),

/***/ "./src/modules/FormSteps/Radio.js":
/*!****************************************!*\
  !*** ./src/modules/FormSteps/Radio.js ***!
  \****************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__);

/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (({
  name,
  values,
  label,
  onChange,
  checked
}) => {
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex flex-col text-lg"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("p", {
    className: "font-semibold"
  }, label), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex gap-4 mt-1"
  }, values.map(value => (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(Option, {
    value: value,
    name: name,
    onChange: onChange,
    checked: checked
  }))));
});
const Option = ({
  value,
  name,
  onChange,
  checked
}) => {
  const id = `${name}_${value}`;
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex gap-2 items-center text-2"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("input", {
    type: "radio",
    name: name,
    id: id,
    value: value,
    onChange: onChange,
    checked: checked === value
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("label", {
    htmlFor: id,
    className: "capitalize"
  }, value));
};

/***/ }),

/***/ "./src/modules/FormSteps/RadioImage.js":
/*!*********************************************!*\
  !*** ./src/modules/FormSteps/RadioImage.js ***!
  \*********************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__);

/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (({
  value,
  name,
  onChange,
  checked
}) => {
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("label", {
    for: value
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("input", {
    type: "radio",
    name: name,
    id: value,
    className: "hidden peer",
    value: value,
    onChange: onChange,
    checked: checked
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "cursor-pointer w-24 h-24 sm:w-40 sm:h-40 peer-checked:bg-accent-1/10 bg-gray-100 border-[4px] border-gray-200 peer-checked:border-accent-1 flex flex-col items-center justify-center opacity-50 peer-checked:opacity-100"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("img", {
    src: "http://template-with-categories.local/wp-content/themes/template/images/placeholder_image.png",
    alt: value,
    className: "w-full"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("p", {
    className: "sm:text-lg text-xs capitalize"
  }, value)));
});

/***/ }),

/***/ "./src/modules/FormSteps/Steps/Step1.js":
/*!**********************************************!*\
  !*** ./src/modules/FormSteps/Steps/Step1.js ***!
  \**********************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _RadioImage__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../RadioImage */ "./src/modules/FormSteps/RadioImage.js");


/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (({
  update,
  formData
}) => {
  const soorten = [{
    name: "soort",
    value: "nieuwbouw"
  }, {
    name: "soort",
    value: "renovatie"
  }];
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex flex-1"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex-1 flex items-center flex-col w-full sm:w-3/5"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("h3", {
    className: "sm:text-2xl text-xl"
  }, "Betreft het nieuwbouw of een renovatie woning?"), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex-1 flex mt-6 gap-2 items-start"
  }, soorten.map(soort => (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_1__["default"], {
    name: soort.name,
    value: soort.value,
    onChange: () => update({
      step1: {
        [soort.name]: soort.value
      }
    }),
    checked: formData.step1 && formData.step1[soort.name] === soort.value
  })))));
});

/***/ }),

/***/ "./src/modules/FormSteps/Steps/Step2.js":
/*!**********************************************!*\
  !*** ./src/modules/FormSteps/Steps/Step2.js ***!
  \**********************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _RadioImage__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../RadioImage */ "./src/modules/FormSteps/RadioImage.js");


/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (({
  update,
  formData
}) => {
  const types = [{
    name: "type",
    value: "tussenwoning"
  }, {
    name: "type",
    value: "tweekapper"
  }, {
    name: "type",
    value: "hoekwoning"
  }, {
    name: "type",
    value: "vrijstaand"
  }, {
    name: "type",
    value: "appartement"
  }, {
    name: "type",
    value: "anders"
  }];
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex flex-1"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex-1 flex items-center flex-col w-full sm:w-3/5"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("h3", {
    className: "sm:text-2xl text-xl"
  }, "Betreft het nieuwbouw of een renovatie woning?"), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "grid mt-6 gap-2 grid-cols-2 sm:grid-cols-3"
  }, types.map(type => (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_1__["default"], {
    name: type.name,
    value: type.value,
    onChange: () => update({
      step2: {
        [type.name]: type.value
      }
    }),
    checked: formData.step2 && formData.step2[type.name] === type.value
  })))));
});

/***/ }),

/***/ "./src/modules/FormSteps/Steps/Step3.js":
/*!**********************************************!*\
  !*** ./src/modules/FormSteps/Steps/Step3.js ***!
  \**********************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _Radio__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../Radio */ "./src/modules/FormSteps/Radio.js");
/* harmony import */ var _RadioImage__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../RadioImage */ "./src/modules/FormSteps/RadioImage.js");



/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (({
  formData,
  update
}) => {
  const plafonds = [{
    name: "plafond",
    value: "tussenwoning"
  }, {
    name: "plafond",
    value: "tweekapper"
  }];
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex flex-1"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex-1 flex items-center flex-col w-full sm:w-3/5"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("h3", {
    className: "sm:text-2xl text-xl"
  }, "Gaat het alleen om wanden? Of ook plafonds?"), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "mt-6 flex flex-col gap-6"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "grid gap-2 grid-cols-2"
  }, plafonds.map(plafond => (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_2__["default"], {
    name: plafond.name,
    value: plafond.value,
    onChange: () => update({
      step3: {
        ...formData.step3,
        [plafond.name]: plafond.value
      }
    }),
    checked: formData.step3 && formData.step3[plafond.name] === plafond.value
  }))), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Radio__WEBPACK_IMPORTED_MODULE_1__["default"], {
    label: "Schikt uw woning over een uitbouw?",
    name: "uitbouw",
    values: ["ja", "nee"],
    onChange: e => {
      update({
        step3: {
          ...formData.step3,
          "uitbouw": e.target.value
        }
      });
    },
    checked: formData.step3?.uitbouw
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Radio__WEBPACK_IMPORTED_MODULE_1__["default"], {
    label: "Beschikt uw woning over een inpandige garage?",
    name: "inpandige_garage",
    onChange: e => {
      update({
        step3: {
          ...formData.step3,
          "inpandige_garage": e.target.value
        }
      });
    },
    checked: formData.step3?.inpandige_garage,
    values: ["ja", "nee"]
  }))));
});

/***/ }),

/***/ "./src/modules/FormSteps/Steps/Step4.js":
/*!**********************************************!*\
  !*** ./src/modules/FormSteps/Steps/Step4.js ***!
  \**********************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _RadioImage__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../RadioImage */ "./src/modules/FormSteps/RadioImage.js");


/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (({
  formData,
  update
}) => {
  const daken = [{
    name: "dak",
    value: "puntdak"
  }, {
    name: "dak",
    value: "plat dak"
  }, {
    name: "dak",
    value: "anders"
  }];
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex flex-1"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex-1 flex items-center flex-col w-full sm:w-3/5"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("h3", {
    className: "sm:text-2xl text-xl"
  }, "Betreft het nieuwbouw of een renovatie woning?"), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "grid mt-6 gap-2 sm:grid-cols-3 grid-cols-2"
  }, daken.map(type => (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_1__["default"], {
    name: type.name,
    value: type.value,
    onChange: () => update({
      step4: {
        [type.name]: type.value
      }
    }),
    checked: formData.step4 && formData.step4[type.name] === type.value
  })))));
});

/***/ }),

/***/ "./src/modules/FormSteps/Steps/Step5.js":
/*!**********************************************!*\
  !*** ./src/modules/FormSteps/Steps/Step5.js ***!
  \**********************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _Number__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../Number */ "./src/modules/FormSteps/Number.js");
/* harmony import */ var _Radio__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../Radio */ "./src/modules/FormSteps/Radio.js");



/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (({
  formData,
  update
}) => {
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex flex-1"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex-1 flex items-center flex-col"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "mt-6 flex flex-col gap-6 w-full sm:w-3/5"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Number__WEBPACK_IMPORTED_MODULE_1__["default"], {
    label: "Hoeveel m2 woonoppervlak heeft uw woning? *",
    value: formData.step5?.woonoppervlak || "",
    onChange: e => {
      update({
        step5: {
          ...formData.step5,
          woonoppervlak: e.target.value
        }
      });
    },
    name: "woonoppervlak",
    unit: "m2"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Number__WEBPACK_IMPORTED_MODULE_1__["default"], {
    label: "Wat is uw plafondhoogte? *",
    value: formData.step5?.plafondhoogte,
    name: "plafondhoogte",
    onChange: e => {
      update({
        step5: {
          ...formData.step5,
          plafondhoogte: e.target.value
        }
      });
    },
    unit: "cm"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Radio__WEBPACK_IMPORTED_MODULE_2__["default"], {
    label: "Hoeveel verdiepingen heeft uw woning? *",
    name: "verdiepingen",
    onChange: e => {
      update({
        step5: {
          ...formData.step5,
          verdiepingen: e.target.value
        }
      });
    },
    checked: formData.step5?.verdiepingen,
    values: ["1", "2", "3", "4"]
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Radio__WEBPACK_IMPORTED_MODULE_2__["default"], {
    label: "Heeft uw bovenste verdieping binnenwanden? *",
    name: "bovenste_verdieping_binnenwanden",
    onChange: e => {
      update({
        step5: {
          ...formData.step5,
          bovenste_verdieping_binnenwanden: e.target.value
        }
      });
    },
    checked: formData.step5?.bovenste_verdieping_binnenwanden,
    values: ["ja", "nee"]
  }))));
});

/***/ }),

/***/ "./src/modules/FormSteps/Steps/Step6.js":
/*!**********************************************!*\
  !*** ./src/modules/FormSteps/Steps/Step6.js ***!
  \**********************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _Text__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../Text */ "./src/modules/FormSteps/Text.js");


/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (() => {
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex flex-1"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex-1 flex items-center flex-col"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "mt-6 grid grid-cols-2 gap-6 w-full sm:w-3/5"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Text__WEBPACK_IMPORTED_MODULE_1__["default"], {
    label: "E-mailadres *",
    name: "email",
    value: "",
    className: "col-span-2 sm:col-span-1",
    type: "email"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Text__WEBPACK_IMPORTED_MODULE_1__["default"], {
    label: "Telefoonnummer *",
    name: "telefoonnummer",
    value: "",
    className: "col-span-2 sm:col-span-1",
    type: "email"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Text__WEBPACK_IMPORTED_MODULE_1__["default"], {
    label: "Voornaam *",
    name: "voornaam",
    className: "col-span-2 sm:col-span-1",
    value: ""
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Text__WEBPACK_IMPORTED_MODULE_1__["default"], {
    label: "Achternaam *",
    name: "achternaam",
    className: "col-span-2 sm:col-span-1",
    value: ""
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Text__WEBPACK_IMPORTED_MODULE_1__["default"], {
    label: "Opmerkingen/bijzonderheden?",
    name: "opmerkingen",
    value: "",
    className: "col-span-2"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Text__WEBPACK_IMPORTED_MODULE_1__["default"], {
    label: "Wat is de prognose opleverdatum? *",
    name: "datum",
    type: "date",
    value: "",
    className: "col-span-2"
  }))));
});

/***/ }),

/***/ "./src/modules/FormSteps/Text.js":
/*!***************************************!*\
  !*** ./src/modules/FormSteps/Text.js ***!
  \***************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _babel_runtime_helpers_extends__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @babel/runtime/helpers/extends */ "./node_modules/@babel/runtime/helpers/esm/extends.js");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_1__);


/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (({
  name,
  value,
  label,
  type = "text",
  className = "",
  ...props
}) => {
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_1__.createElement)("div", {
    className: "flex flex-col text-lg items-start " + className
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_1__.createElement)("p", {
    className: "font-semibold"
  }, label), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_1__.createElement)("input", (0,_babel_runtime_helpers_extends__WEBPACK_IMPORTED_MODULE_0__["default"])({
    type: type
  }, props, {
    className: "bg-gray-100 py-1 rounded placeholder-gray-900 w-full border-gray-200",
    name: name,
    id: name,
    value: value
  })));
});

/***/ }),

/***/ "./src/modules/FormSteps/index.js":
/*!****************************************!*\
  !*** ./src/modules/FormSteps/index.js ***!
  \****************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @wordpress/element */ "@wordpress/element");
/* harmony import */ var _wordpress_element__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_wordpress_element__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _Steps_Step1__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Steps/Step1 */ "./src/modules/FormSteps/Steps/Step1.js");
/* harmony import */ var _Steps_Step2__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./Steps/Step2 */ "./src/modules/FormSteps/Steps/Step2.js");
/* harmony import */ var _Steps_Step3__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./Steps/Step3 */ "./src/modules/FormSteps/Steps/Step3.js");
/* harmony import */ var _Steps_Step4__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./Steps/Step4 */ "./src/modules/FormSteps/Steps/Step4.js");
/* harmony import */ var _Steps_Step5__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./Steps/Step5 */ "./src/modules/FormSteps/Steps/Step5.js");
/* harmony import */ var _Steps_Step6__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./Steps/Step6 */ "./src/modules/FormSteps/Steps/Step6.js");

const {
  render,
  useState,
  useEffect
} = wp.element;






const stepsSkelet = {
  step1: {
    soort: null
  },
  step2: {
    type: null
  },
  step3: {
    plafond: null,
    uitbouw: null,
    inpandige_garage: null
  },
  step4: {
    dak: null
  },
  step5: {
    woonoppervlak: null,
    plafondhoogte: null,
    verdiepingen: null,
    bovenste_verdieping_binnenwanden: null
  },
  step6: {
    email: null,
    telefoonnummer: null,
    achternaam: null,
    opmerkingen: null,
    datum: null
  }
};
const FormSteps = () => {
  const [formData, setFormData] = useState({
    step1: null,
    step2: null,
    step3: null,
    step4: null,
    step5: null,
    step6: null,
    ...(localStorage.getItem("formData") ? JSON.parse(localStorage.getItem("formData")) : {})
  });
  const [currentStep, setCurrentStep] = useState(0);
  const update = e => {
    setFormData(prev => ({
      ...prev,
      ...e
    }));
  };
  useEffect(() => {
    localStorage.setItem("formData", JSON.stringify(formData));
  }, [formData]);
  const getUnfinishedIndex = data => {
    return Object.keys(data).findIndex(key => {
      if (!Object.keys(stepsSkelet[key]).every(x => data[key] && data[key][x])) {
        return key;
      }
    });
  };
  useEffect(() => {
    if (localStorage.getItem("formData")) {
      const data = JSON.parse(localStorage.getItem("formData"));
      const index = getUnfinishedIndex(data);
      setCurrentStep(index);
    }
  }, []);
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("section", {
    className: "flex-1 flex flex-col bg-main my-10 rounded shadow p-10"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "mb-4"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("h2", {
    className: "md:text-3xl sm:text-2xl text-xl"
  }, "Binnen 1 minuut uw project berekenen?")), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex w-full gap-2"
  }, [...new Array(7)].map((_, i) => (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: `sm:h-2 h-1 cursor-pointer flex-1 ${i <= currentStep ? i === currentStep ? "bg-accent-1" : "bg-accent-1/40" : i > getUnfinishedIndex(formData) ? "bg-gray-300" : "bg-accent-1/40"} 
                  `,
    onClick: () => {
      setCurrentStep(i);
      if (Object.values(formData).filter(x => x).length >= i) {}
    }
  }))), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("form", {
    action: "",
    className: "p-4 pt-6 flex-1 flex flex-col"
  }, currentStep === 0 && (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Steps_Step1__WEBPACK_IMPORTED_MODULE_1__["default"], {
    formData: formData,
    update: update
  }), currentStep === 1 && (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Steps_Step2__WEBPACK_IMPORTED_MODULE_2__["default"], {
    formData: formData,
    update: update
  }), currentStep === 2 && (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Steps_Step3__WEBPACK_IMPORTED_MODULE_3__["default"], {
    formData: formData,
    update: update
  }), currentStep === 3 && (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Steps_Step4__WEBPACK_IMPORTED_MODULE_4__["default"], {
    formData: formData,
    update: update
  }), currentStep === 4 && (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Steps_Step5__WEBPACK_IMPORTED_MODULE_5__["default"], {
    formData: formData,
    update: update
  }), currentStep === 5 && (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Steps_Step6__WEBPACK_IMPORTED_MODULE_6__["default"], {
    formData: formData,
    update: update
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "mt-6 mx-auto flex gap-2"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("button", {
    type: "button",
    className: currentStep === 0 ? "w-24 py-1 ml-4 font-bold rounded border-2 bg-gray-200 text-gray-300 border-gray-300 pointer-events-none" : "w-24 py-1 ml-4 font-bold rounded border-2 text-accent-2 border-accent-2",
    onClick: () => setCurrentStep(prev => prev - 1)
  }, "Vorige"), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("button", {
    type: "button",
    className: getUnfinishedIndex(formData) <= currentStep ? "w-24 py-1 ml-4 font-bold rounded border-2 bg-gray-200 text-gray-300 border-gray-300 pointer-events-none" : "w-24 py-1 ml-4 font-bold rounded bg-accent-2 text-main",
    onClick: () => setCurrentStep(prev => prev + 1)
  }, "Volgende"))));
};
render((0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(FormSteps, null), document.getElementById("form-steps"));

/***/ }),

/***/ "./node_modules/@babel/runtime/helpers/esm/extends.js":
/*!************************************************************!*\
  !*** ./node_modules/@babel/runtime/helpers/esm/extends.js ***!
  \************************************************************/
/***/ ((__unused_webpack___webpack_module__, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (/* binding */ _extends)
/* harmony export */ });
function _extends() {
  _extends = Object.assign ? Object.assign.bind() : function (target) {
    for (var i = 1; i < arguments.length; i++) {
      var source = arguments[i];
      for (var key in source) {
        if (Object.prototype.hasOwnProperty.call(source, key)) {
          target[key] = source[key];
        }
      }
    }
    return target;
  };
  return _extends.apply(this, arguments);
}

/***/ })

}]);
//# sourceMappingURL=src_modules_FormSteps_index_js.js.map