/** @type {import('next').NextConfig} */
/*
const nextConfig = {
  reactStrictMode: true,
  swcMinify: true
}

module.exports = nextConfig
*/
/*
module.exports = {
  output: 'standalone',
}
*/
module.exports = {
  webpackDevMiddleware: config => {
    config.watchOptions = {
      poll: 1000,
      aggregateTimeout: 300,
    }
    return config
  },
}