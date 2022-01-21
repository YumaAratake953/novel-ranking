module Types
    class WeatherType < Types::BaseObject
      field :weather, String, null: false, description: '天気'
      def weather
        object[:weather]
      end
  
      field :temperature, Int, null: false, description: '温度'
      def temperature
        object[:temperature]
      end
    end
  end