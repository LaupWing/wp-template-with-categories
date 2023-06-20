/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

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
  label
}) => {
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex flex-col my-4 text-lg"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("p", {
    className: "font-semibold"
  }, label), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex gap-4 mt-1"
  }, values.map(value => (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(Option, {
    value: value,
    name: name
  }))));
});
const Option = ({
  value,
  name
}) => {
  const id = `${name}_${value}`;
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex gap-2 items-center text-2"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("input", {
    type: "radio",
    name: name,
    id: id,
    value: value
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
  name
}) => {
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("label", {
    for: value
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("input", {
    type: "radio",
    name: name,
    id: value,
    className: "hidden peer",
    value: value
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "cursor-pointer w-48 h-48 peer-checked:bg-accent-1/10 bg-gray-100 border-[4px] border-gray-200 peer-checked:border-accent-1 flex flex-col items-center justify-center opacity-50 peer-checked:opacity-100"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("img", {
    src: "http://template-with-categories.local/wp-content/themes/template/images/placeholder_image.png",
    alt: value,
    className: "w-full"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("p", {
    className: "text-lg capitalize"
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


/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (() => {
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex flex-1"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex-1 flex items-center flex-col"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("h3", {
    className: "text-2xl"
  }, "Betreft het nieuwbouw of een renovatie woning?"), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex-1 flex mt-6 gap-2 items-start"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_1__["default"], {
    name: "soort",
    value: "nieuwbouw"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_1__["default"], {
    name: "soort",
    value: "renovatie"
  }))));
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


/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (() => {
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex flex-1"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex-1 flex items-center flex-col"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("h3", {
    className: "text-2xl"
  }, "Betreft het nieuwbouw of een renovatie woning?"), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "grid mt-6 gap-2 grid-cols-3"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_1__["default"], {
    name: "type",
    value: "tussenwoning"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_1__["default"], {
    name: "type",
    value: "tweekapper"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_1__["default"], {
    name: "type",
    value: "hoekwoning"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_1__["default"], {
    name: "type",
    value: "vrijstaand"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_1__["default"], {
    name: "type",
    value: "appartement"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_1__["default"], {
    name: "type",
    value: "anders"
  }))));
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



/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (() => {
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex flex-1"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex-1 flex items-center flex-col"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("h3", {
    className: "text-2xl"
  }, "Gaat het alleen om wanden? Of ook plafonds?"), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "mt-6 flex flex-col"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "grid gap-2 grid-cols-2"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_2__["default"], {
    name: "plafonds",
    value: "tussenwoning"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_2__["default"], {
    name: "plafonds",
    value: "tweekapper"
  })), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Radio__WEBPACK_IMPORTED_MODULE_1__["default"], {
    label: "Schikt uw woning over een uitbouw?",
    name: "uitbouw",
    values: ["ja", "nee"]
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Radio__WEBPACK_IMPORTED_MODULE_1__["default"], {
    label: "Beschikt uw woning over een inpandige garage?",
    name: "inpandige_garage",
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
/* harmony import */ var _Radio__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../Radio */ "./src/modules/FormSteps/Radio.js");
/* harmony import */ var _RadioImage__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../RadioImage */ "./src/modules/FormSteps/RadioImage.js");



/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (() => {
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex flex-1"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex-1 flex items-center flex-col"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("h3", {
    className: "text-2xl"
  }, "Betreft het nieuwbouw of een renovatie woning?"), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "grid mt-6 gap-2 grid-cols-3"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_2__["default"], {
    name: "dak",
    value: "puntdak"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_2__["default"], {
    name: "dak",
    value: "plat dak"
  }), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_RadioImage__WEBPACK_IMPORTED_MODULE_2__["default"], {
    name: "dak",
    value: "anders"
  }))));
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

const {
  render,
  useState
} = wp.element;




const FormSteps = () => {
  const [formData, setFormData] = useState({
    soort: null,
    type: null,
    plafonds: null,
    dak: null,
    details: null,
    gebruiker: null
  });
  // Object.values(formData).filter(x => x).length
  const [currentStep, setCurrentStep] = useState(3);
  return (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("section", {
    className: "flex-1 flex flex-col bg-main my-10 rounded shadow p-10"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "mb-4"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("h2", {
    className: "text-3xl"
  }, "Binnen 1 minuut uw project berekenen?")), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "flex w-full gap-2"
  }, [...new Array(7)].map((_, i) => (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: `h-2 cursor-pointer ${i <= currentStep ? i === currentStep ? "bg-accent-1" : "bg-accent-1/40" : "bg-gray-300"} flex-1`,
    onClick: () => {
      setCurrentStep(i);
      if (Object.values(formData).filter(x => x).length >= i) {}
    }
  }))), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("form", {
    action: "",
    className: "p-4 pt-6 flex-1 flex flex-col"
  }, currentStep === 0 && (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Steps_Step1__WEBPACK_IMPORTED_MODULE_1__["default"], null), currentStep === 1 && (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Steps_Step2__WEBPACK_IMPORTED_MODULE_2__["default"], null), currentStep === 2 && (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Steps_Step3__WEBPACK_IMPORTED_MODULE_3__["default"], null), currentStep === 3 && (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(_Steps_Step4__WEBPACK_IMPORTED_MODULE_4__["default"], null), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("div", {
    className: "mt-auto mx-auto flex gap-2"
  }, (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("button", {
    className: "w-24 py-1 ml-4 font-bold rounded border-2 text-accent-2 border-accent-2"
  }, "Vorige"), (0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)("button", {
    className: "w-24 py-1 ml-4 font-bold rounded bg-accent-2 text-main"
  }, "Volgende"))));
};
render((0,_wordpress_element__WEBPACK_IMPORTED_MODULE_0__.createElement)(FormSteps, null), document.getElementById("form-steps"));

/***/ }),

/***/ "@wordpress/element":
/*!*********************************!*\
  !*** external ["wp","element"] ***!
  \*********************************/
/***/ ((module) => {

module.exports = window["wp"]["element"];

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/compat get default export */
/******/ 	(() => {
/******/ 		// getDefaultExport function for compatibility with non-harmony modules
/******/ 		__webpack_require__.n = (module) => {
/******/ 			var getter = module && module.__esModule ?
/******/ 				() => (module['default']) :
/******/ 				() => (module);
/******/ 			__webpack_require__.d(getter, { a: getter });
/******/ 			return getter;
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/define property getters */
/******/ 	(() => {
/******/ 		// define getter functions for harmony exports
/******/ 		__webpack_require__.d = (exports, definition) => {
/******/ 			for(var key in definition) {
/******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
/******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
/******/ 				}
/******/ 			}
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	(() => {
/******/ 		__webpack_require__.o = (obj, prop) => (Object.prototype.hasOwnProperty.call(obj, prop))
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/************************************************************************/
var __webpack_exports__ = {};
// This entry need to be wrapped in an IIFE because it need to be isolated against other modules in the chunk.
(() => {
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _modules_FormSteps__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./modules/FormSteps */ "./src/modules/FormSteps/index.js");

})();

/******/ })()
;
//# sourceMappingURL=index.js.map