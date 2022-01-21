import React from "react"
import { NovelMenu } from "./components/NovelMenu"
import { BrowserRouter, Redirect, Route, Switch } from "react-router-dom"
import PageA from "./components/PageA"
import { ApolloProvider } from '@apollo/client';
import client from './graphql/client';

const App: React.FC = () => {

  return (
    <BrowserRouter>
      <ApolloProvider client={client}>
        <Switch>
          <Route path="/" exact component={NovelMenu}/>
          <Route path="/page_a" exact component={PageA} />
          <Redirect to="/" />
        </Switch>
      </ApolloProvider>
    </BrowserRouter>
  )
}

export default App