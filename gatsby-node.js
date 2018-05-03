const path = require('path');

exports.createPages = ({ graphql, boundActionCreators }) => {
  const { createPage } = boundActionCreators;

  const pages = new Promise((resolve, reject) => {
    graphql(
      `
        {
          allMortyPage {
            edges {
              node {
                template
                id
                route
              }
            }
          }
        }
      `
    ).then(result => {
      if (result.errors) {
        console.log(result.errors);
        reject(result.errors);
      }

      let value = 'dummy-page';
      let edges = result.data.allMortyPage.edges;
      edges = edges.filter(edge => {
        return edge.node.route !== value;
      });

      edges.forEach(edge => {
        if (edge.node.template && edge.node.template.length) {
          const template = path.resolve(
            'src',
            'templates',
            `${edge.node.template}.js`
          );

          createPage({
            path: edge.node.route,
            component: template,
            context: {
              id: edge.node.id
            }
          });
        }
      });
      resolve();
    });
  });

  // const stories = new Promise((resolve, reject) => {
  //   graphql(
  //     `
  //       {
  //         allMortyStory {
  //           edges {
  //             node {
  //               template
  //               id
  //               route
  //             }
  //           }
  //         }
  //       }
  //     `
  //   ).then(result => {
  //     if (result.errors) {
  //       console.log(result.errors);
  //       reject(result.errors);
  //     }
  // 
  //     let value = 'dummy-story';
  //     let edges = result.data.allMortyStory.edges;
  //     edges = edges.filter(edge => {
  //       return edge.node.route !== value;
  //     });
  // 
  //     edges.forEach((edge, ix) => {
  //       const prevId =
  //         (ix > 0 && edges[ix - 1].node.id) || edges[edges.length - 1].node.id;
  //       const nextId =
  //         (ix < edges.length - 1 && edges[ix + 1].node.id) || edges[0].node.id;
  // 
  //       const template = path.resolve(
  //         'src',
  //         'templates',
  //         `${edge.node.template}.js`
  //       );
  // 
  //       createPage({
  //         path: edge.node.route,
  //         component: template,
  //         context: {
  //           id: edge.node.id,
  //           prevId: prevId,
  //           nextId: nextId
  //         }
  //       });
  //     });
  //     resolve();
  //   });
  // });
  // 
  // const events = new Promise((resolve, reject) => {
  //   graphql(
  //     `
  //       {
  //         allMortyEvent {
  //           edges {
  //             node {
  //               template
  //               id
  //               route
  //             }
  //           }
  //         }
  //       }
  //     `
  //   ).then(result => {
  //     if (result.errors) {
  //       console.log(result.errors);
  //       reject(result.errors);
  //     }
  // 
  //     let value = 'dummy-event';
  //     let edges = result.data.allMortyEvent.edges;
  //     edges = edges.filter(edge => {
  //       return edge.node.route !== value;
  //     });
  // 
  //     edges.forEach(edge => {
  //       const template = path.resolve(
  //         'src',
  //         'templates',
  //         `${edge.node.template}.js`
  //       );
  // 
  //       createPage({
  //         path: edge.node.route,
  //         component: template,
  //         context: {
  //           id: edge.node.id
  //         }
  //       });
  //     });
  //     resolve();
  //   });
  // });

  // return Promise.all([pages, events, stories]);
  return Promise.all([pages]);
};
