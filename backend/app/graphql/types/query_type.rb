module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField
    
    # TODO: remove me
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
    field :site1_days, [Types::Site1DayType], null: true
    def site1_days
      Site1Day.all
    end
    # field :site1_months, [Types::Site1MonthType], null: true
    # def site1_months
    #   Site1Months.all
    # end
    # field :site1_years, [Types::Site1YearType], null: true
    # def site1_years
    #   Site1Years.all
    # end
    # field :site1_ruikeis, [Types::Site1RuikeiType], null: true
    # def site1_ruikeis
    #   Site1Ruikeis.all
    # end
    field :site2_days, [Types::Site2DayType], null: true
    def site2_days
      Site2Day.all
    end
    # field :site2_months, [Types::Site2MonthType], null: true
    # def site2_months
    #   Site2Month.all
    # end
    # field :site2_years, [Types::Site2YearType], null: true
    # def site2_years
    #   Site2Year.all
    # end
    # field :site2_ruikeis, [Types::Site2RuikeiType], null: true
    # def site2_ruikeis
    #   Site2Ruikei.all
    # end
    # field :site3_days, [Types::Site3DayType], null: true
    # def site3_days
    #   Site3Day.all
    # end
    # field :site3_months, [Types::Site3MonthType], null: true
    # def site3_months
    #   Site3Month.all
    # end
    # field :site3_years, [Types::Site3YearType], null: true
    # def site3_years
    #   Site3Year.all
    # end
    # field :site3_ruikeis, [Types::Site3RuikeiType], null: true
    # def site3_ruikeis
    #   Site3Ruikei.all
    # end
  end
end
