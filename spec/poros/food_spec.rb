require 'rails_helper'

describe Food do
  it "exists and has attributes" do
    data = {
            "fdcId": 553364,
            "description": "CHOCOLATE",
            "dataType": "Branded",
            "gtinUpc": "015418007879",
            "publishedDate": "2019-04-01",
            "brandOwner": "Rouse's Enterprises, Inc.",
            "ingredients": "MILK, CREAM",
            "foodNutrients": [
                {
                    "nutrientId": 1110,
                    "nutrientName": "Vitamin D (D2 + D3), International Units",
                    "nutrientNumber": "324",
                    "unitName": "IU",
                    "derivationCode": "LCCD",
                    "derivationDescription": "Calculated from a daily value percentage per serving size measure",
                    "value": 0E-8
                },
                {
                    "nutrientId": 1003,
                    "nutrientName": "Protein",
                    "nutrientNumber": "203",
                    "unitName": "G",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 3.53000000
                },
                {
                    "nutrientId": 1004,
                    "nutrientName": "Total lipid (fat)",
                    "nutrientNumber": "204",
                    "unitName": "G",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 10.59000000
                },
                {
                    "nutrientId": 1005,
                    "nutrientName": "Carbohydrate, by difference",
                    "nutrientNumber": "205",
                    "unitName": "G",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 24.71000000
                },
                {
                    "nutrientId": 1008,
                    "nutrientName": "Energy",
                    "nutrientNumber": "208",
                    "unitName": "KCAL",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 200.00000000
                },
                {
                    "nutrientId": 2000,
                    "nutrientName": "Sugars, total including NLEA",
                    "nutrientNumber": "269",
                    "unitName": "G",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 18.82000000
                },
                {
                    "nutrientId": 1079,
                    "nutrientName": "Fiber, total dietary",
                    "nutrientNumber": "291",
                    "unitName": "G",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 1.20000000
                },
                {
                    "nutrientId": 1087,
                    "nutrientName": "Calcium, Ca",
                    "nutrientNumber": "301",
                    "unitName": "MG",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 104.00000000
                },
                {
                    "nutrientId": 1089,
                    "nutrientName": "Iron, Fe",
                    "nutrientNumber": "303",
                    "unitName": "MG",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 1.18000000
                },
                {
                    "nutrientId": 1092,
                    "nutrientName": "Potassium, K",
                    "nutrientNumber": "306",
                    "unitName": "MG",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 262.00000000
                },
                {
                    "nutrientId": 1093,
                    "nutrientName": "Sodium, Na",
                    "nutrientNumber": "307",
                    "unitName": "MG",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 53.00000000
                },
                {
                    "nutrientId": 1235,
                    "nutrientName": "Sugars, added",
                    "nutrientNumber": "539",
                    "unitName": "G",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 14.10000000
                },
                {
                    "nutrientId": 1253,
                    "nutrientName": "Cholesterol",
                    "nutrientNumber": "601",
                    "unitName": "MG",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 41.00000000
                },
                {
                    "nutrientId": 1257,
                    "nutrientName": "Fatty acids, total trans",
                    "nutrientNumber": "605",
                    "unitName": "G",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 0E-8
                },
                {
                    "nutrientId": 1258,
                    "nutrientName": "Fatty acids, total saturated",
                    "nutrientNumber": "606",
                    "unitName": "G",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 7.06000000
                }
            ],
            "allHighlightFields": "",
            "score": 413.40097
        }

    food = Food.new(data)

    expect(food).to be_a(Food)

    expect(food.code).to eq(data[:gtinUpc])
    expect(food.description).to eq(data[:description])
    expect(food.brand_owner).to eq(data[:brandOwner])
    expect(food.ingredients).to eq(["MILK", "CREAM"])
  end
end
