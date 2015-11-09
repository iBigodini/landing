module.exports = (grunt) ->
  grunt.initConfig
  # COFFEE ================================================================
    coffee:
      build:
        files: 'target/app.js': ['src/*.coffee', 'src/**/*.coffee']
    # JADE ==============================================================
    jade:
      build:
        options: pretty: yes
        flatten: yes
        expand: yes
        src: ['src/*.jade', 'src/**/*.jade']
        dest: 'target/'
    # STYLUS ==============================================================
    stylus:
      build:
        options: compress: no
        files: 'target/style.css': ['src/*.styl', 'src/**/*.styl']

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-stylus'

  grunt.registerTask 'default', ['coffee', 'stylus', 'jade']
