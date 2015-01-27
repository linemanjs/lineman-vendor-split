module.exports = (lineman) ->
  config:
    goats: "scream"
    pages:
      dev:
        context:
          vendorjs: "js/vendor.js"
          vendorcss: "css/vendor.css"
      dist:
        context:
          vendorjs: "js/vendor.js"
          vendorcss: "css/vendor.css"
