---@class DrugTypes
---@field public quality integer Random integer between 1 and 10
---@field public fertilizer 'nitrogen' | 'phosphorus' | 'potassium'
---@field public water number The amount of water needed for the specific sort (number between 1 and 10)
---@field public growthTime number The time needed for the specific sort to grow by 1% (in seconds)

return {
    sorts = {
        brickWeed = {
            quality = 2,
            fertilizer = 'nitrogen',
            water = 4.0,
            growthTime = 120
        },

        shake = {
            quality = 3,
            fertilizer = 'nitrogen',
            water = 4.5,
            growthTime = 130
        },

        schwag = {
            quality = 4,
            fertilizer = 'nitrogen',
            water = 5.0,
            growthTime = 140
        },

        northernLights = {
            quality = 5,
            fertilizer = 'potassium',
            water = 7.0,
            growthTime = 160
        },

        whiteWidow = {
            quality = 6,
            fertilizer = 'phosphorus',
            water = 7.5,
            growthTime = 170
        },

        blueDream = {
            quality = 8,
            fertilizer = 'phosphorus',
            water = 6.0,
            growthTime = 140
        },

        purpleHaze = {
            quality = 9,
            fertilizer = 'phosphorus',
            water = 5.5,
            growthTime = 180
        }
    }
};