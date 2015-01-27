module.exports = (lineman) ->
  config:
    watch:
      js:
        files: ["<%= files.js.app %>"]
        tasks: ["concat_sourcemap:js"]

      vendorjs:
        files: ["<%= files.js.vendor %>"]
        tasks: ["concat_sourcemap:vendorjs"]

      css:
        files: ["<%= files.css.app %>"]
        tasks: ["concat_sourcemap:css"]

      vendorcss:
        files: ["<%= files.css.vendor %>"]
        tasks: ["concat_sourcemap:vendorcss"]
