module.exports = {
  siteMetadata: {
    title: 'Gatsby Default Starter'
  },
  plugins: [
    'gatsby-plugin-react-helmet',
    {
      resolve: 'gatsby-source-morty',
      options: {
        account: process.env.MORTY_ACCOUNT,
        accessToken: process.env.MORTY_TOKEN
      }
    }
  ]
};
