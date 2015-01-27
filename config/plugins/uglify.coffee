module.exports = (lineman) ->
  config:
    uglify:
      js:
        files:
          "<%= files.js.minified %>": "<%= files.js.concatenated %>"
          "<%= files.js.minifiedVendor %>": "<%= files.js.concatenatedVendor %>"
