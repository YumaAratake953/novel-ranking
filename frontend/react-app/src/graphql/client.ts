import {
  createHttpLink, ApolloClient, InMemoryCache, from,
} from '@apollo/client';
import { onError } from '@apollo/client/link/error';

const httpLink = createHttpLink({
  uri: 'http://18.178.57.118:3000/graphql'
  //uri: 'localhost:3000/graphql'
});
const errorLink = onError(({ graphQLErrors, networkError }) => {
  const errors = [];
  if (graphQLErrors) {
    graphQLErrors.forEach((err) => {
      errors.push(err);
    });
  }

  if (networkError) {
    errors.push(networkError);
  }

});

const apolloClient = new ApolloClient({
  cache: new InMemoryCache(),
  link: from([errorLink, httpLink]),
});

export default apolloClient;