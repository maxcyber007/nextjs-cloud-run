/** @type {import('next').NextConfig} */
/*
const nextConfig = {
  reactStrictMode: true,
  swcMinify: true
}

module.exports = nextConfig
*/

module.exports = {
  output: 'standalone',
  images: {
    disableStaticImages: true,
  },
  //  server: {
  //    port: process.env.PORT || 3000,
  //    host: "0.0.0.0",
  //  }
}
