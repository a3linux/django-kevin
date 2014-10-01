module.exports =

  # Run jasmine specs headlessly through PhantomJS
  # https://github.com/gruntjs/grunt-contrib-jasmine

  # Code coverage template mix-in for grunt-contrib-jasmine, using istanbul
  # https://github.com/maenu/grunt-template-jasmine-istanbul

  coverage:
    options:
      specs: '<%= paths.js %>/tests/build/*Spec.js'
      helpers: '<%= paths.js %>/tests/build/*Helper.js'
      vendor: [
        'http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js'
        '<%= paths.js %>/lib/*.js',
        ]
      keepRunner: true
      template: require('grunt-template-jasmine-istanbul')
      templateOptions:
        coverage: '<%= paths.tests %>/coverage/coverage.json'
        report: [
          {
            type: 'html'
            options:
              dir: '<%= paths.tests %>/coverage'
          }
          { type: 'text-summary' }
        ]

    src: '<%= paths.js %>/build/*.js'
