import React from "react"
import { Novel } from "../interfaces/index"
import { makeStyles } from '@material-ui/core/styles'
import Box from '@material-ui/core/Box'
import Collapse from '@material-ui/core/Collapse'
import IconButton from '@material-ui/core/IconButton'
import Table from '@material-ui/core/Table'
import TableBody from '@material-ui/core/TableBody'
import TableCell from '@material-ui/core/TableCell'
import TableHead from '@material-ui/core/TableHead'
import TableRow from '@material-ui/core/TableRow'
import KeyboardArrowDownIcon from '@material-ui/icons/KeyboardArrowDown'
import KeyboardArrowUpIcon from '@material-ui/icons/KeyboardArrowUp'

interface NovelItemProps {
  novel: Novel
  rank: Number
}

const useRowStyles = makeStyles({
  root: {
    '& > *': {
      borderBottom: 'unset',
    },
  },
});

export const NovelItem: React.FC<NovelItemProps> = ({novel, rank}) => {
  const [open, setOpen] = React.useState(false);
  const classes = useRowStyles();
  const tags = [novel.tag0, novel.tag1, novel.tag2, novel.tag3, novel.tag4, novel.tag5, novel.tag6, 
                novel.tag7, novel.tag8, novel.tag9, novel.tag10, novel.tag11, novel.tag12, novel.tag13,
                novel.tag14, novel.tag15, novel.tag16, novel.tag17]
  
                
  return (
    <React.Fragment>
      <TableRow className={classes.root}>
        <TableCell>
          <IconButton aria-label="expand row" size="small" onClick={() => setOpen(!open)}>
            {open ? <KeyboardArrowUpIcon /> : <KeyboardArrowDownIcon />}
          </IconButton>
        </TableCell>
        <TableCell>{rank}</TableCell>
        <TableCell scope="row" >
          <a href={novel.novelUrl}>{novel.title}</a>
        </TableCell>
        <TableCell align="left"><a href={novel.authorUrl}>{novel.author}</a></TableCell>
        <TableCell align="right">{novel.kinds}</TableCell>
        <TableCell align="right">{novel.peges}</TableCell>
      </TableRow>
      <TableRow>
        <TableCell style={{ paddingBottom: 0, paddingTop: 0 }} colSpan={6}>
          <Collapse in={open} timeout="auto" unmountOnExit>
            <Box margin={1}>
              <Table size="small" aria-label="purchases">
                <TableHead>
                  <TableRow>
                    <TableCell>あらすじ</TableCell>
                  </TableRow>
                </TableHead>
                <TableBody>
                  <TableRow>
                    <TableCell scope="row">
                      {novel.description}
                    </TableCell>
                  </TableRow>
                </TableBody>
              </Table>
              <Table>
                <TableBody >
                  {tags.map((tag: String) => {
                    return (
                     tag !== null && <TableCell style={{width: 'auto'}} >{tag}</TableCell>
                    )
                  })}
                </TableBody>
              </Table>
            </Box>
          </Collapse>
        </TableCell>
      </TableRow>
    </React.Fragment>
  );
}