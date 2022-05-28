import React, { useState } from 'react'
import AppBar from '@material-ui/core/AppBar'
import CssBaseline from '@material-ui/core/CssBaseline'
import Divider from '@material-ui/core/Divider'
import Drawer from '@material-ui/core/Drawer'
// import Hidden from '@material-ui/core/Hidden'
import Hidden from '@mui/material/Hidden';
import IconButton from '@material-ui/core/IconButton'
import List from '@material-ui/core/List'
import ListItem from '@material-ui/core/ListItem'
import ListItemText from '@material-ui/core/ListItemText'
import MenuIcon from '@material-ui/icons/Menu'
import Toolbar from '@material-ui/core/Toolbar'
import Typography from '@material-ui/core/Typography'
import { makeStyles, useTheme} from '@material-ui/core/styles'
import { Link } from "react-router-dom"

import { NovelList } from "./NovelList"
import { DocumentNode} from '@apollo/client'

//表示するランキング情報をもらう引数
interface NovelMenuProps {
  per: String     //集計期間をもらう引数
  menu: DocumentNode  //呼び出すクエリをもらう引数
}


const drawerWidth = 240

const useStyles = makeStyles((theme) => ({
  root: {
    display: 'flex',
  },
  drawer: {
    [theme.breakpoints.up('sm')]: {
      width: drawerWidth,
      flexShrink: 0,
    },
  },
  appBar: {
    [theme.breakpoints.up('sm')]: {
      width: `calc(100% - ${drawerWidth}px)`,
      marginLeft: drawerWidth,
    },
  },
  menuButton: {
    marginRight: theme.spacing(2),
    [theme.breakpoints.up('sm')]: {
      display: 'none',
    },
  },
  // necessary for content to be below app bar
  toolbar: theme.mixins.toolbar,
  drawerPaper: {
    width: drawerWidth,
  },
  content: {
    flexGrow: 1,
    padding: theme.spacing(3),
  },
}));




export const NovelMenu: React.FC<NovelMenuProps> = ({per, menu}) => {
  const [mobileOpen, setMobileOpen] = useState(false)
  const classes = useStyles()
  const theme = useTheme()

  const link1 = [
    {id: 1, period: '日間', linkname: '/'},
    {id: 2, period: '月間', linkname: '/month'},
    {id: 3, period: '年間', linkname: '/year'},
    {id: 4, period: '累計', linkname: '/ruikei'}
  ]
  // const link2 = [
  //   {id: 1, period: '今日のおすすめ', linkname: '/recommend'},
  //   {id: 2, period: 'タグ，ジャンル別検索', linkname: '/another'},
  // ]


  const handleDrawerToggle = () => {
    setMobileOpen(!mobileOpen)
  }

  const drawer = (
    <div>
      <div className={classes.toolbar} />
      <Divider />
      <List>
        {link1.map(e => (
          <Link to={e.linkname}>
            <ListItem button key={e.period}>
              <ListItemText>
                {e.period}
              </ListItemText>
            </ListItem>
          </Link>
        ))}
      </List>
      <Divider />
      {/* <List>
        {link2.map(e => (
          <ListItem button key={e.period}>
            <ListItemText>
              <Link to={e.linkname}>{e.period}</Link>
            </ListItemText>
          </ListItem>
        ))}
      </List> */}
    </div>
  );

  return (
    <> 
    <div className={classes.root}>
      <CssBaseline />
      <AppBar position="fixed" className={classes.appBar}>
        <Toolbar>
          <IconButton
            color="inherit"
            aria-label="open drawer"
            edge="start"
            onClick={handleDrawerToggle}
            className={classes.menuButton}
          >
            <MenuIcon />
          </IconButton>
          <Typography variant="h6" noWrap>
            ネット小説総合ランキング！　{per}
          </Typography>
        </Toolbar>
      </AppBar>
      <nav className={classes.drawer} aria-label="mailbox folders">
        {/* The implementation can be swapped with js to avoid SEO duplication of links. */}
        <Hidden smUp implementation="css">
          <Drawer
            variant="temporary"
            anchor={theme.direction === 'rtl' ? 'right' : 'left'}
            open={mobileOpen}
            onClose={handleDrawerToggle}
            classes={{
              paper: classes.drawerPaper,
            }}
            ModalProps={{
              keepMounted: true, // Better open performance on mobile.
            }}
          >
            {drawer}
          </Drawer>
        </Hidden>
        <Hidden xsDown implementation="css">
          <Drawer
            classes={{
              paper: classes.drawerPaper,
            }}
            variant="permanent"
            open
          >
            {drawer}
          </Drawer>
        </Hidden>
      </nav>
      <main className={classes.content}>
        <div className={classes.toolbar} />
        <Typography paragraph>
          <NovelList per={per} menu={menu} />
        </Typography>
      </main>
    </div>
   </> 
  )
}
