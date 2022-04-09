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
      tag0
      tag1
      tag2
      tag3
      tag4
      tag5
      tag6
      tag7
      tag8
      tag9
      tag10
      tag11
      tag12
      tag13
      tag14
      tag15
      tag16
      tag17
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
      tag0
      tag1
      tag2
      tag3
      tag4
      tag5
      tag6
      tag7
      tag8
      tag9
      tag10
      tag11
      tag12
      tag13
      tag14
      tag15
      tag16
      tag17
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
      tag0
      tag1
      tag2
      tag3
      tag4
      tag5
      tag6
      tag7
      tag8
      tag9
      tag10
      tag11
      tag12
      tag13
      tag14
      tag15
      tag16
      tag17
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
      tag0
      tag1
      tag2
      tag3
      tag4
      tag5
      tag6
      tag7
      tag8
      tag9
      tag10
      tag11
      tag12
      tag13
      tag14
      tag15
      tag16
      tag17
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

