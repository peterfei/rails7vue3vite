module Api
  module Mock
    class Role::RoleController < ApplicationController
      def index
        render json:
                 {
                   "code": 200,
                   "result": {
                     "page": 1,
                     "pageSize": 10,
                     "pageCount": 60,
                     "list": [
                       {
                         "id": 79,
                         "name": "龙平",
                         "explain": "梁桂英",
                         "isDefault": true,
                         "menu_keys": [],
                         "create_date": "1980-06-06 04:33:47",
                         "status": "enable"
                       },
                       {
                         "id": 61,
                         "name": "尹静",
                         "explain": "苏强",
                         "isDefault": false,
                         "menu_keys": [
                           "detail",
                           "dashboard",
                           "basic-form"
                         ],
                         "create_date": "1972-03-19 04:19:55",
                         "status": "enable"
                       },
                       {
                         "id": 52,
                         "name": "卢秀兰",
                         "explain": "田涛",
                         "isDefault": true,
                         "menu_keys": [
                           "detail",
                           "workplace",
                           "console"
                         ],
                         "create_date": "1994-05-18 03:07:49",
                         "status": "enable"
                       },
                       {
                         "id": 48,
                         "name": "江静",
                         "explain": "冯勇",
                         "isDefault": true,
                         "menu_keys": [
                           "workplace",
                           "basic-form"
                         ],
                         "create_date": "1986-08-30 02:02:04",
                         "status": "normal"
                       },
                       {
                         "id": 31,
                         "name": "程磊",
                         "explain": "朱强",
                         "isDefault": true,
                         "menu_keys": [
                           "workplace",
                           "console"
                         ],
                         "create_date": "1971-03-14 08:19:31",
                         "status": "disable"
                       },
                       {
                         "id": 93,
                         "name": "马丽",
                         "explain": "贾娟",
                         "isDefault": false,
                         "menu_keys": [
                           "detail",
                           "workplace",
                           "step-form"
                         ],
                         "create_date": "1993-05-19 03:01:33",
                         "status": "enable"
                       },
                       {
                         "id": 69,
                         "name": "汤娜",
                         "explain": "孔勇",
                         "isDefault": true,
                         "menu_keys": [
                           "detail",
                           "step-form",
                           "basic-form",
                           "workplace"
                         ],
                         "create_date": "1985-12-01 02:43:09",
                         "status": "enable"
                       },
                       {
                         "id": 30,
                         "name": "陈洋",
                         "explain": "贺强",
                         "isDefault": true,
                         "menu_keys": [],
                         "create_date": "2004-12-06 03:14:06",
                         "status": "normal"
                       },
                       {
                         "id": 24,
                         "name": "廖杰",
                         "explain": "乔霞",
                         "isDefault": false,
                         "menu_keys": [
                           "console"
                         ],
                         "create_date": "1990-02-18 02:35:29",
                         "status": "enable"
                       },
                       {
                         "id": 73,
                         "name": "许芳",
                         "explain": "曹杰",
                         "isDefault": true,
                         "menu_keys": [
                           "workplace",
                           "dashboard",
                           "basic-form"
                         ],
                         "create_date": "1974-03-10 09:32:08",
                         "status": "enable"
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

