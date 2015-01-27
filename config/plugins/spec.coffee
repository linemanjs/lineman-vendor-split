module.exports = (lineman) ->
  config:
    spec:
      files: [
        "<%= files.js.concatenatedVendor %>"
        "<%= files.js.concatenated %>"
        "<%= files.js.concatenatedSpec %>"
      ]
