module.exports = (lineman) ->
  files:
    js:
      concatenatedVendor: "generated/js/vendor.js"
      minifiedVendor: "dist/js/vendor.js"
      minifiedVendorWebRelative: "js/vendor.js"
    css:
      concatenatedVendor: "generated/css/vendor.css"
      minifiedVendor: "dist/css/vendor.css"
      minifiedVendorWebRelative: "css/vendor.css"
