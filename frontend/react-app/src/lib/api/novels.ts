import client from "./client"
import { Novel } from "../../interfaces/index"

// novel一覧を取得
export const getNovels = () => {
  return client.get("/novels")
}

// novelを新規作成
export const createNovel = (data: Novel) => {
  return client.post("/Novels", data)
}

// novelを削除
export const deleteNovel = (id: number) => {
  return client.delete(`/novels/${id}`)
}