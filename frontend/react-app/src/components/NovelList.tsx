import React, {useState} from "react"
import { NovelItem } from "./NovelItem"
import { Novel } from "../interfaces/index"
import Table from '@material-ui/core/Table'
import TableBody from '@material-ui/core/TableBody'
import TableCell from '@material-ui/core/TableCell'
import TableContainer from '@material-ui/core/TableContainer'
import TableHead from '@material-ui/core/TableHead'
import TableRow from '@material-ui/core/TableRow'
import Paper from '@material-ui/core/Paper'
import ReactPaginate from 'react-paginate'

import "../paginate.css"

import { GET_ALLDAY } from '../graphql/query'
import { GET_ALLMONTH } from '../graphql/query'
import { GET_ALLYEAR } from '../graphql/query'
import { GET_ALLRUIKEI } from '../graphql/query'
import { DocumentNode, useQuery} from '@apollo/client'

interface NovelListProps {
  per: String     //集計期間をもらう引数
  menu: DocumentNode  //呼び出すクエリをもらう引数
}

export const NovelList: React.FC<NovelListProps> = ({per, menu}) => {
  
  const [Offset, setOffset] = useState(0);
  const perPage: number = 30 // 1ページあたりに表示したいアイテムの数
  let ranked = 1 //ランキング順位用変数

  const handlePageChange = (event: any) => {
    let page_number = event['selected']; // クリックした部分のページ数が{selected: 2}のような形で返ってくる
    setOffset(page_number*perPage); // offsetを変更し、表示開始するアイテムの番号を変更
  }
  const { loading, error, data, fetchMore } = useQuery(menu)
  if (loading) return <p>...loading</p>
  if (error) return <p>{error.message}</p>



  return (
    <>
    <TableContainer component={Paper}>
      <Table aria-label="collapsible table">
        <TableHead>
          <TableRow>
            <TableCell />
            <TableCell>順位</TableCell>
            <TableCell>タイトル</TableCell>
            <TableCell align="left">著者</TableCell>
            <TableCell align="right">ジャンル</TableCell>
            <TableCell align="right">話数</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {per === '日間' && data.allDays.slice(Offset, Offset + perPage).map((novel: Novel) => {
            return (
              <NovelItem
                novel={novel}
                rank= {Offset + (ranked++)}  
              />
            )
          })}
          {per === '月間' && data.allMonths.slice(Offset, Offset + perPage).map((novel: Novel) => {
            return (
              <NovelItem
                novel={novel}
                rank= {Offset + (ranked++)}
              />
            )
          })}
          {per === '年間' && data.allYears.slice(Offset, Offset + perPage).map((novel: Novel) => {
            return (
              <NovelItem
                novel={novel}
                rank= {Offset + (ranked++)}
              />
            )
          })}
          {per === '累計' && data.allRuikeis.slice(Offset, Offset + perPage).map((novel: Novel) => {
            return (
              <NovelItem
                novel={novel}
                rank= {Offset + (ranked++)}
              />
            )
          })}    
        </TableBody>
      </Table>
    </TableContainer>
    
    <div className="center" >
      <ReactPaginate
        previousLabel={'<'}
        nextLabel={'>'}
        breakLabel={'...'}
        pageCount={Math.ceil(1500/perPage)} // 全部のページ数。端数の場合も考えて切り上げに。
        marginPagesDisplayed={2} // 一番最初と最後を基準にして、そこからいくつページ数を表示するか
        pageRangeDisplayed={4} // アクティブなページを基準にして、そこからいくつページ数を表示するか
        onPageChange={handlePageChange} // クリック時のfunction
        containerClassName={'pagination'} // ページネーションであるulに着くクラス名
        activeClassName={'active'} // アクティブなページのliに着くクラス名
        previousClassName={'pagination__previous'} // 「<」のliに着けるクラス名
        nextClassName={'pagination__next'} // 「>」のliに着けるクラス名
        disabledClassName={'pagination__disabled'} // 使用不可の「<,>」に着くクラス名
      />
    </div>
    </>
  );
}