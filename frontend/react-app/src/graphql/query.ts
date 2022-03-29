import { gql } from '@apollo/client'

//novel1：カクヨム
//novel2：ノベルアップ
//novel3：小説家になろう
//novel4：アルファポリス
export const GET_ALLDAY = gql` 
  {
    allDays { 
      id
      title
      novelUrl
      author
      authorUrl
      description
      peges
      kinds
    }
  }
`
export const GET_ALLMONTH = gql` 
  {
    allMonths { 
      id
      title
      novelUrl
      author
      authorUrl
      description
      peges
      kinds
    }
  }
`
export const GET_ALLYEAR = gql` 
  {
    allYears { 
      id
      title
      novelUrl
      author
      authorUrl
      description
      peges
      kinds
    }
  }
`
export const GET_ALLRUIKEI = gql` 
  {
    allRuikeis { 
      id
      title
      novelUrl
      author
      authorUrl
      description
      peges
      kinds
    }
  }
`
export const GET_NOVEL1DAY = gql` 
  {
    site1Days { 
      id
      title
      novelUrl
      author
      authorUrl
      description
      peges
      kinds
    }
  }
`
export const GET_NOVEL2DAY = gql`
  {
    site2Days { 
      id
      title
      novelUrl
      author
      authorUrl
      description
      peges
      kinds
    }
  }
`
export const GET_NOVEL3DAY = gql`
  {
    site2Days { 
      id
      title
      novelUrl
      author
      authorUrl
      description
      peges
      kinds
    }
  }
`
export const GET_NOVEL4DAY = gql`
  {
    site2Days { 
      id
      title
      novelUrl
      author
      authorUrl
      description
      peges
      kinds
    }
  }
`

