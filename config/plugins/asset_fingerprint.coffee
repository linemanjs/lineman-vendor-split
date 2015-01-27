module.exports = (lineman) ->
  config:
    assetFingerprint:
      dist:
        files: [
          expand: true
          cwd: "dist"
          src: [
            "<%= files.img.root %>/**/*",
            "<%= files.webfonts.root %>/**/*",
            "<%= files.js.minifiedWebRelative %>",
            "<%= files.js.minifiedVendorWebRelative %>",
            "<%= files.css.minifiedWebRelative %>"
            "<%= files.css.minifiedVendorWebRelative %>"
          ]
          dest: "dist"
        ]
