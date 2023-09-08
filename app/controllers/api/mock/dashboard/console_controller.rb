module Api
  module Mock
    class Dashboard::ConsoleController < ApplicationController
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
  end

end

