vehicles = {
    --[[
    [ID] = {
        {x,y,z,rot},
    },
    ]]
    [1] = {
        {1944.1199951172, -1459.9942626953, 13.3828125, 90},
        {1968.9836425781, -1459.9942626953, 13.3828125, 90},
        {1890.0771484375, -1466.7960205078, 13.3828125, 270},
        {1865.3251953125, -1466.7960205078, 13.3828125, 270},
    },

    --[[
    [2] = {

    },  ]]
}

boats = {
    --[[
    [ID] = {
        {x,y,z,rot, modelid},
    },
    ]]
    [1] = {
        {1904.2830810547, -1408.080078125, 10.949999809265, 212, 453},
        {1929.7830810547, -1415.080078125, 10.949999809265, -120, 493},
        --{1930.8334960938, -1411.3967285156, 12.328356742859, 180, 473},
        --{1919.2698974609, -1427.8817138672, 12.275784492493, 63, 472},
    },

    --[[
    [2] = {
        
    }, ]]
}

-- vehicles = {
    -- --[[
    -- [ID] = {
        -- {x,y,z,rot},
    -- },
    -- ]]
    -- [1] = {
        -- {2241.4875488281, -1413.5705566406, 23.458066940308, 90},
        -- {2228.9467773438, -1417.7987060547, 23.458572387695, 270},
    -- },
-- }

peds = {
    --[[
    [ID] = {
        {x,y,z,rot,walk,{anim1, anim2}},
    },
    ]]
    [1] = {
        -- Bal oldal (Sétáló emberek)
        {1898.5695800781, -1454.2180419922, 13.546875, -270, true, nil},
        {1896.5695800781, -1453.2180419922, 13.546875, -270, true, nil},
        {1895.5695800781, -1454.0180419922, 13.546875, -270, true, nil},
        -- Jobb oldal (Sétáló emberek)
        {1940.0695800781, -1452.5180419922, 13.546875, -90, true, nil},
        {1941.8695800781, -1451.5180419922, 13.546875, -90, true, nil},
        {1943.4695800781, -1451.5180419922, 13.546875, -90, true, nil},
        -- Híd rész (Sétáló emberek)
        {1910.0190429688, -1448.9539794922, 13.465784072876, -35, true, nil},
        -- Animált pedek
        {1926.0682373047, -1445.4796142578, 13.49942779541, 116, false, {"GHANDS", "gsign1", -1, true, false, false}},
        {1924.7113037109, -1446.294921875, 13.491995811462, 284, false, {"GHANDS", "gsign2", -1, true, false, false}},
        {1923.8895263672, -1441.5638427734, 13.533559799194, 166, false, {"BEACH", "parksit_m_loop", -1, true, false, false}}, 
        --{724.52783203125,-1665.9119873047,10.68751335144, 178, false, {"ped", "walk_gang1", -1, true, false, false}},
        --{2220.2058105469, -1400.3887939453, 23.984985351563, 180, false, {"ped", "walk_gang2", -1, true, false, false}},
        --{2203.1433105469, -1413.5979003906, 23.984375, 270, false, {"LOWRIDER", "M_smklean_loop", -1, true, false, false}},
        --{2203.595703125, -1409.9279785156, 23.984375, 160, false, {"RIOT", "RIOT_ANGRY", -1, true, false, false}},
    },

    --[[
    [2] = {
        
    },]]
}

valiableVehicles = {579, 489, 496, 536, 412, 523, 602, 589, 445, 421, 416, 596, 597, 603, 506, 502, 503, 411, 451}
valiableSkins = {18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 57,63, 64, 69, 75, 76, 77, 85, 87, 88, 89, 90, 91, 92, 93, 129, 130, 131, 138, 139, 140, 141, 145, 148, 150}

cameraPos = {
    [1] = {
        [1] = {681.58715820312, -509.06396484375, 19.26978302002, 681.87933349609, -409.34579467773, 11.773322105408},
        [2] = {681.58715820312, -509.06396484375, 19.26978302002, 681.87933349609, -409.34579467773, 11.773322105408},
    },

    --[[
    [2] = {
        [1] = {2217.4819335938, -1416.349609375, 25.4547996521, 2218.4270019531, -1416.3302001953, 26.128324508667},
        [2] = {2217.4819335938, -1416.349609375, 25.4547996521, 2218.4270019531, -1416.3302001953, 26.128324508667},
    }]]
}