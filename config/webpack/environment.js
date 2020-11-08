const { environment } = require('@rails/webpacker')

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
module.exports = environment
