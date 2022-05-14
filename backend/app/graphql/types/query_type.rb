module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :all_days, [Types::AllDayType], null: true
    def all_days
      AllDay.all
    end
    field :all_months, [Types::AllMonthType], null: true
    def all_months
      AllMonth.all
    end
    field :all_years, [Types::AllYearType], null: true
    def all_years
      AllYear.all
    end
    field :all_ruikeis, [Types::AllRuikeiType], null: true
    def all_ruikeis
      AllRuikei.all
    end
  end
end
