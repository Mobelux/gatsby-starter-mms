import React from 'react';
import Helmet from 'react-helmet';
import Announcement from '../components/Announcement';

const Home = ({ data }) => {

  // // Home data object
  // const page = data.mortyPage;
  //
  // // Announcement if it exists
  // const { announcement } = JSON.parse(page.customFields);

  return (
    <div className="home">
      <Helmet>
        <title>MMS Starter</title>
      </Helmet>
      <div className="relative">
      Home
        <Announcement className="absolute bottom-0">
        </Announcement>
      </div>
    </div>
  );
};

export default Home;

export const pageQuery = graphql`
  query Home($id: String!) {
    mortyPage(id: { eq: $id }) {
      title
      subtitle
      customFields
      bannerImage {
        url
      }
    }
    allMortyPage {
      edges {
        node {
          title
          subtitle
          route
        }
      }
    }
    allMortyStory(filter: { section: { ne: "Dummy Section" } }) {
      edges {
        node {
          title
          subtitle
          route
          section
          featuredHome
          readingTime
          bannerImage {
            url
          }
          abstractPhoto {
            url
          }
          publishedDate
        }
      }
    }
    allMortyEvent(filter: { section: { ne: "Dummy Section" } }) {
      edges {
        node {
          title
          eventDate
          startTime
          venue
          route
          section
          publishedDate
          abstractPhoto {
            url
          }
        }
      }
    }
  }
`;
