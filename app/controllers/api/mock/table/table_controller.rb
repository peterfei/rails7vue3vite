module Api
  module Mock
    class Table::TableController < ApplicationController
      def index
        render json:
                 {
                   "code": 200,
                   "result": {
                     "page": 1,
                     "pageSize": 10,
                     "pageCount": 60,
                     "itemCount": 600,
                     "list": [
                       {
                         "id": 135298,
                         "beginTime": "2002-01-15 09:15:49",
                         "endTime": "2011-04-15 17:36:07",
                         "address": "柳州市",
                         "name": "朱明",
                         "avatar": "http://dummyimage.com/400x400/7bf279/f2799f&text=Dorothy",
                         "date": "1991-02-21",
                         "time": "22:53",
                         "no": 1483966,
                         "status": true
                       },
                       {
                         "id": 118272,
                         "beginTime": "1975-08-18 07:30:29",
                         "endTime": "1987-12-12 01:23:13",
                         "address": "张家口市",
                         "name": "姜洋",
                         "avatar": "http://dummyimage.com/400x400/79c2f2/e5f279&text=Eric",
                         "date": "1986-08-02",
                         "time": "14:00",
                         "no": 8498386,
                         "status": true
                       },
                       {
                         "id": 121275,
                         "beginTime": "2011-08-02 12:56:31",
                         "endTime": "1995-06-05 02:56:45",
                         "address": "鄂尔多斯市",
                         "name": "赵芳",
                         "avatar": "http://dummyimage.com/400x400/db79f2/79f2b8&text=Helen",
                         "date": "1997-02-24",
                         "time": "11:54",
                         "no": 8714651,
                         "status": true
                       },
                       {
                         "id": 160498,
                         "beginTime": "2022-02-26 16:50:41",
                         "endTime": "2009-01-13 09:04:15",
                         "address": "黄山市",
                         "name": "孟敏",
                         "avatar": "http://dummyimage.com/400x400/f29479/7980f2&text=Shirley",
                         "date": "2003-11-15",
                         "time": "15:26",
                         "no": 2397730,
                         "status": false
                       },
                       {
                         "id": 998704,
                         "beginTime": "1978-06-04 20:41:00",
                         "endTime": "2012-01-08 23:54:45",
                         "address": "锦州市",
                         "name": "邓娟",
                         "avatar": "http://dummyimage.com/400x400/a4f279/f279c7&text=Joseph",
                         "date": "1970-07-10",
                         "time": "04:43",
                         "no": 8891679,
                         "status": true
                       },
                       {
                         "id": 80137,
                         "beginTime": "2013-11-03 23:16:59",
                         "endTime": "1981-04-02 21:13:29",
                         "address": "黄冈市",
                         "name": "龚艳",
                         "avatar": "http://dummyimage.com/400x400/79eaf2/f2d679&text=Susan",
                         "date": "2014-01-26",
                         "time": "19:34",
                         "no": 5533510,
                         "status": false
                       },
                       {
                         "id": 947005,
                         "beginTime": "1992-04-10 04:35:32",
                         "endTime": "2009-04-13 10:24:21",
                         "address": "荆门市",
                         "name": "贺杰",
                         "avatar": "http://dummyimage.com/400x400/b279f2/79f28f&text=Susan",
                         "date": "1981-03-07",
                         "time": "14:56",
                         "no": 614193,
                         "status": false
                       },
                       {
                         "id": 440455,
                         "beginTime": "2021-11-23 11:05:37",
                         "endTime": "1979-03-23 13:36:04",
                         "address": "揭阳市",
                         "name": "蔡平",
                         "avatar": "http://dummyimage.com/400x400/f27986/79a9f2&text=Frank",
                         "date": "2022-04-16",
                         "time": "07:08",
                         "no": 5440140,
                         "status": false
                       },
                       {
                         "id": 111786,
                         "beginTime": "2003-06-24 07:32:45",
                         "endTime": "2001-09-28 07:43:46",
                         "address": "曲靖市",
                         "name": "孙杰",
                         "avatar": "http://dummyimage.com/400x400/ccf279/f279f0&text=Patricia",
                         "date": "2021-05-04",
                         "time": "23:28",
                         "no": 1367902,
                         "status": true
                       },
                       {
                         "id": 146758,
                         "beginTime": "2017-05-18 15:02:25",
                         "endTime": "1994-11-18 09:01:18",
                         "address": "中卫市",
                         "name": "彭平",
                         "avatar": "http://dummyimage.com/400x400/79f2d1/f2ad79&text=Robert",
                         "date": "1985-06-03",
                         "time": "00:51",
                         "no": 6632293,
                         "status": false
                       }
                     ]
                   },
                   "message": "ok",
                   "type": "success"
                 }

      end
    end
  end

end

