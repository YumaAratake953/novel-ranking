import { render } from "react-dom";
import {
  BrowserRouter,
  Routes,
  Route,
} from "react-router-dom";
import { ApolloProvider } from '@apollo/client'
import client from './graphql/client'

import { NovelMenu } from "./components/NovelMenu"

import { GET_ALLDAY } from './graphql/query'
import { GET_ALLMONTH } from './graphql/query'
import { GET_ALLYEAR } from './graphql/query'
import { GET_ALLRUIKEI } from './graphql/query'

const rootElement = document.getElementById("root");
render(
  <BrowserRouter>
    <ApolloProvider client={client}>
        <Routes>
          <Route path="/" element={<NovelMenu per={"日間"} menu={GET_ALLDAY}/>}/>
          <Route path="/month" element={<NovelMenu per={"月間"} menu={GET_ALLMONTH}/>}/>
          <Route path="/year" element={<NovelMenu per={"年間"} menu={GET_ALLYEAR}/>}/>
          <Route path="/ruikei" element={<NovelMenu per={"累計"} menu={GET_ALLRUIKEI}/>}/> 
        </Routes>
    </ApolloProvider>
  </BrowserRouter>,
  rootElement
);
