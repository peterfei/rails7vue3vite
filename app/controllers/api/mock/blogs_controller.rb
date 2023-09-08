module Api
  class Mock::BlogsController < ApplicationController
    def blogs_json
      blogs = Blog.select(:id, :title, :desc)

      render json: blogs
    end

    def single_post_json
      begin
        single_post = Blog.find(params[:id])
        render json: single_post
      rescue StandardError
        render json: { error: "error", post: "Not found :'(" }
      end
    end

    def login
      render json: { success: "ok", result: { token: "1123" }, code: 200 }
    end

    def admin_info
      render json: { code: 200, result:
        {
          userId: '1',
          username: 'admin',
          realName: 'Admin',
          avatar: Random.rand,
          desc: 'manager',
          password: Random.rand,
          token: Random.rand,
          permissions: [
            {
              label: '主控台',
              value: 'dashboard_console',
            },
            {
              label: '监控页',
              value: 'dashboard_monitor',
            },
            {
              label: '工作台',
              value: 'dashboard_workplace',
            },
            {
              label: '基础列表',
              value: 'basic_list',
            },
            {
              label: '基础列表删除',
              value: 'basic_list_delete',
            },
          ],
        }
      }
    end
  end

  def console
    render json: { success: "ok", result: {
      "visits": {
        dayVisits: Random.rand,
        rise: Random.rand,
        decline: Random.rand,
        amount: Random.rand,
      },
      # 销售额
      "saleroom": {
        weekSaleroom: Random.rand,
        amount: Random.rand,
        degree: Random.rand,
      },
      # 订单量
      orderLarge: {
        weekLarge: Random.rand,
        rise: Random.rand,
        decline: Random.rand,
        amount: Random.rand,
      },
      # //成交额度
      volume: {
        weekLarge: Random.rand,
        rise: Random.rand,
        decline: Random.rand,
        amount: Random.rand,
      },
    }, code: 200 }
  end
end
