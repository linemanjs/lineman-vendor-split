module.exports = (lineman) ->
  config:
    concat_sourcemap:
      js:
        src: [
          "<%= files.template.generated %>"
          "<%= files.js.app %>"
          "<%= files.coffee.generated %>"
        ]
        dest: "<%= files.js.concatenated %>"

      vendorjs:
        src: [
          "<%= files.js.vendor %>"
        ]
        dest: "<%= files.js.concatenatedVendor %>"

      css:
        src: [
          "<%= files.sass.generatedVendor %>"
          "<%= files.sass.generatedApp %>"
          "<%= files.css.app %>"
        ]
        dest: "<%= files.css.concatenated %>"

      vendorcss:
        src: [
          "<%= files.sass.generatedVendor %>"
          "<%= files.sass.generatedApp %>"
          "<%= files.css.app %>"
        ]
        dest: "<%= files.css.concatenatedVendor %>"
