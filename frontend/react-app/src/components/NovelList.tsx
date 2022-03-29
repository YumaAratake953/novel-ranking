import React from "react"
import { NovelItem } from "./NovelItem"
import { Novel } from "../interfaces/index"
import Table from '@material-ui/core/Table'
import TableBody from '@material-ui/core/TableBody'
import TableCell from '@material-ui/core/TableCell'
import TableContainer from '@material-ui/core/TableContainer'
import TableHead from '@material-ui/core/TableHead'
import TableRow from '@material-ui/core/TableRow'
import Paper from '@material-ui/core/Paper'
import { useQuery } from '@apollo/client'
import { GET_NOVEL1DAY } from '../graphql/query'
import { GET_NOVEL2DAY } from '../graphql/query'
import { GET_ALLDAY } from '../graphql/query'
import { GET_ALLMONTH } from '../graphql/query'
import { GET_ALLYEAR } from '../graphql/query'
import { GET_ALLRUIKEI } from '../graphql/query'



export const NovelList: React.FC = () => {
  const { loading, error, data } = useQuery(GET_ALLRUIKEI);

  if (loading) return <p>...loading</p>;
  if (error) return <p>{error.message}</p>;

  return (
    <TableContainer component={Paper}>
      <Table aria-label="collapsible table">
        <TableHead>
          <TableRow>
            <TableCell />
            <TableCell>順位</TableCell>
            <TableCell>タイトル</TableCell>
            <TableCell align="right">著者</TableCell>
            <TableCell align="right">ジャンル</TableCell>
            <TableCell align="right">話数</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {
            data.allRuikeis.map((novel: Novel) => {
              return (
                <NovelItem
                  novel={novel}
                />
              )
            })
          }
        </TableBody>
      </Table>
    </TableContainer>
  );
}