module.exports = {
  siteMetadata: {
    title: 'Gatsby/MMS Starter'
  },
  plugins: [
    'gatsby-plugin-sass',
    'gatsby-plugin-react-next',
    'gatsby-plugin-react-helmet',
    {
      resolve: 'gatsby-source-mms',
      options: {
        account: process.env.MORTY_ACCOUNT,
        accessToken: process.env.MORTY_TOKEN
      }
    }
  ]
};
