class RankingController < ApplicationController
    require 'logger'   #デバック用
    def ranking
        @site1s = [Site1Day.all, Site1Month.all, Site1Year.all, Site1Ruikei.all]   #カクヨム
        @site2s = [Site2Day.all, Site2Month.all, Site2Year.all, Site2Ruikei.all]   #ノベルアップ
        @site3s = [Site3Day.all, Site3Month.all, Site3Year.all, Site3Ruikei.all]  #小説家になろう
        @data = [AllDay, AllMonth, AllYear, AllRuikei]
        
        @count = 0
        @i1 = 0     #カクヨム
        @i2 = 0     #ノベルアップ
        @i3 = 0     #小説家になろう
        #AllDay.destroy_all
        AllMonth.destroy_all
        #AllYear.destroy_all
        #AllRuikei.destroy_all

        #1位は基本的になろう作品を入れる

        #for i in 0..3 do
    
            @site1 = @site1s[i]   #カクヨム
            @site2 = @site2s[i]   #ノベルアップ
            @site3 = @site3s[i]   #小説家になろう
            @count = 0  #ランキング数
            @i1 = 0     #カクヨム
            @i2 = 0     #ノベルアップ
            @i3 = 0     #小説家になろう
            #乱数でランキングを決める(0~45:なろう，46~75:カクヨム，75~100：ノベルアップ)
            
            
            loop do
                x = rand(100)
                if @count == 0 || (x <= 45 && @i3 < 500) then
                    page = @site3[@i3].peges.delete("^0-9")
                    if page == "" then
                        page = "短編" 
                    end
                    rank = @data[i].new(title: @site3[@i3].title, novel_url: @site3[@i3].novel_url, author: @site3[@i3].author, 
                    author_url: @site3[@i3].author_url, description: @site3[@i3].description, peges: page, words: @site3[@i3].words,
                    kinds: @site3[@i3].kinds, point: @site3[@i3].point, tag0: @site3[@i3].tag0, tag1: @site3[@i3].tag1, tag2: @site3[@i3].tag2,
                    tag3: @site3[@i3].tag3,tag4: @site3[@i3].tag4,tag5: @site3[@i3].tag5,tag6: @site3[@i3].tag6,tag7: @site3[@i3].tag7,
                    tag8: @site3[@i3].tag8,tag9: @site3[@i3].tag9,tag10: @site3[@i3].tag10,tag11: @site3[@i3].tag11,tag12: @site3[@i3].tag12,
                    tag13: @site3[@i3].tag13,tag14: @site3[@i3].tag14,tag15: @site3[@i3].tag15,tag16: @site3[@i3].tag16,tag17: @site3[@i3].tag17)
                    sleep 0.1   #負荷分散用
                    rank.save
                    @i3 += 1
                elsif x <= 75 && @i1 < 500 then
                    page = @site1[@i1].peges.delete("^0-9")
                    if page == "" then
                        page = "短編" 
                    end
                    rank = @data[i].new(title: @site1[@i1].title, novel_url: @site1[@i1].novel_url, author: @site1[@i1].author, 
                    author_url: @site1[@i1].author_url, description: @site1[@i1].description, peges: page, words: @site1[@i1].words,
                    kinds: @site1[@i1].kinds, point: @site1[@i1].point, tag0: @site1[@i1].tag0, tag1: @site1[@i1].tag1, tag2: @site1[@i1].tag2,
                    tag3: @site1[@i1].tag3,tag4: @site1[@i1].tag4,tag5: @site1[@i1].tag5,tag6: @site1[@i1].tag6,tag7: @site1[@i1].tag7,
                    tag8: @site1[@i1].tag8,tag9: @site1[@i1].tag9,tag10: @site1[@i1].tag10)
                    sleep 0.1  #負荷分散用
                    rank.save
                    @i1 += 1
                else 
                    if @i2 >= 500 
                        if @i3 < 500 then
                            page = @site3[@i3].peges.delete("^0-9")
                            if page == "" then
                                page = "短編" 
                            end
                            rank = @data[i].new(title: @site3[@i3].title, novel_url: @site3[@i3].novel_url, author: @site3[@i3].author, 
                            author_url: @site3[@i3].author_url, description: @site3[@i3].description, peges: page, words: @site3[@i3].words,
                            kinds: @site3[@i3].kinds, point: @site3[@i3].point, tag0: @site3[@i3].tag0, tag1: @site3[@i3].tag1, tag2: @site3[@i3].tag2,
                            tag3: @site3[@i3].tag3,tag4: @site3[@i3].tag4,tag5: @site3[@i3].tag5,tag6: @site3[@i3].tag6,tag7: @site3[@i3].tag7,
                            tag8: @site3[@i3].tag8,tag9: @site3[@i3].tag9,tag10: @site3[@i3].tag10,tag11: @site3[@i3].tag11,tag12: @site3[@i3].tag12,
                            tag13: @site3[@i3].tag13,tag14: @site3[@i3].tag14,tag15: @site3[@i3].tag15,tag16: @site3[@i3].tag16,tag17: @site3[@i3].tag17)
                            sleep 0.1   #負荷分散用
                            rank.save
                            @i3 += 1
                        elsif @i1 < 500 then
                            page = @site1[@i1].peges.delete("^0-9")
                            if page == "" then
                                page = "短編" 
                            end
                            rank = @data[i].new(title: @site1[@i1].title, novel_url: @site1[@i1].novel_url, author: @site1[@i1].author, 
                            author_url: @site1[@i1].author_url, description: @site1[@i1].description, peges: page, words: @site1[@i1].words,
                            kinds: @site1[@i1].kinds, point: @site1[@i1].point, tag0: @site1[@i1].tag0, tag1: @site1[@i1].tag1, tag2: @site1[@i1].tag2,
                            tag3: @site1[@i1].tag3,tag4: @site1[@i1].tag4,tag5: @site1[@i1].tag5,tag6: @site1[@i1].tag6,tag7: @site1[@i1].tag7,
                            tag8: @site1[@i1].tag8,tag9: @site1[@i1].tag9,tag10: @site1[@i1].tag10)
                            sleep 0.1   #負荷分散用
                            rank.save
                            @i1 += 1
                        else
                            break  
                        end
                    end
                    rank = @data[i].new(title: @site2[@i2].title, novel_url: @site2[@i2].novel_url, author: @site2[@i2].author, 
                    author_url: @site2[@i2].author_url, description: @site2[@i2].description, peges: @site2[@i2].peges, words: @site2[@i2].words,
                    kinds: @site2[@i2].kinds, point: @site2[@i2].point, tag0: @site2[@i2].tag0, tag1: @site2[@i2].tag1, tag2: @site2[@i2].tag2,
                    tag3: @site2[@i2].tag3,tag4: @site2[@i2].tag4,tag5: @site2[@i2].tag5,tag6: @site2[@i2].tag6,tag7: @site2[@i2].tag7,
                    tag8: @site2[@i2].tag8,tag9: @site2[@i2].tag9,tag10: @site2[@i2].tag10,tag11: @site2[@i2].tag11,tag12: @site2[@i2].tag12,
                    tag13: @site2[@i2].tag13,tag14: @site2[@i2].tag14,tag15: @site2[@i2].tag15,tag16: @site2[@i2].tag16,tag17: @site2[@i2].tag17)
                    sleep 0.1   #負荷分散用
                    rank.save
                    @i2 += 1
                end

                @count += 1

                if @count >= 1500
                    break
                end
                
            end

        #end

    end
end