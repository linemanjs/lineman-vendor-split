# lineman-vendor-split

Creates discrete vendor and app bundle files for js/css.

## Installation

```bash
$ npm install lineman-vendor-split --save
```

## What does this plugin do?

This plugin will configure your lineman project as follows:

* **grunt-concat-sourcemap**: creates separate bundles
  * `generated/{js,css}/vendor.{js,css}`
  * `generated/{js,css}/app.{js,css}`

* **grunt-contrib-watch**: watches the following files separately
  * `files.{js,css}.app`
  * `files.{js,css}.vendor`

* **asset-fingerprint**: creates separate fingerprinted files
  * `dist/{js,css}/vendor.{js,css}`
  * `dist/{js,css}/app.{js,css}`

* **grunt-contrib-uglify**: uglifies separate bundle files
  * `generated/js/vendor.js`
  * `generated/js/app.js`

* **grunt-cssmin**: minifies separate bundle files
  * `generated/css/vendor.css`
  * `generated/css/app.css`

* **spec**: prepends `files.concatenatedVendor` to the list of spec bundled files
  ```coffeescript
      spec:
        files: [
          "<%= files.js.concatenatedVendor %>"
          "<%= files.js.concatenated %>"
          "<%= files.js.concatenatedSpec %>"
        ]
  ```

## Why would I use this plugin?

You want to be able to emit `<script src="app.js">` and `<script src="vendor.js">` in lineman pages that live in `pages/*.{us,html}` for simplicity when debugging and more control over caching granularity. (Vendor bundles typically don't change all that much, so it's nice to avoid having to recompile/concat those dependencies if you don't have to).

## Usage

Within `pages/index.{us,html,hb}` simply reference the separate bundles within script and link tags

Statically, like this:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>My App</title>
  <link rel="stylesheet" href="/css/vendor.css">
  <link rel="stylesheet" href="/css/app.css">
</head>
<body>
  <script src="/js/vendor.js"></script>
  <script src="/js/app.js"></script>
</body>
</html>
```

Or with your dynamic template of choice, ie: underscore using _.template

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>My Underscore Templated App Page</title>
  <link rel="stylesheet" href="<%= vendorcss %>">
  <link rel="stylesheet" href="<%= css %>">
</head>
<body>
  <script src="<%= vendorjs %>"></script>
  <script src="<%= js %>"></script>
</body>
</html>
