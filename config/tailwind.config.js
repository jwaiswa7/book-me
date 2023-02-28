module.exports = {
  mode: 'jit',
  daisyui: {
    themes: [ "corporate"] 
  },
  purge: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js'
  ], plugins: [
    require('daisyui'),
  ]
}