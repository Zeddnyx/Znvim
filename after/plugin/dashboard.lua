local home = os.getenv('HOME')
local db = require('dashboard')

db.height = 20
db.width  = 20
db.custom_header = {
    [[                                                     i\                   ]],
    [[                 i                                   00\                  ]],
    [[                :h-                                  Nhy`                 ]],
    [[               -mh.                           h.    `Ndho                 ]],
    [[               hmh+                          oNm.   oNdhh                 ]],
    [[              `Nmhd`                        /NNmd  /NNhhd                 ]],
    [[              -NNhhy                      `hMNmmm`+NNdhhh                 ]],
    [[              .NNmhhs              ```....`..-:/./mNdhhh+                 ]],
    [[               mNNdhhh-     `.-::///+++////++//:--.`-/sd`                 ]],
    [[               oNNNdhhdo..://++//++++++/+++//++///++/-.`                  ]],
    [[          y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:         ]],
    [[     .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+          ]],
    [[     h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`           ]],
    [[     hd+` -NNNy`./dNNNNNhhhh+-://///    +oo:`  ::-:+////++///:`          ]],
    [[     /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmo  ../-///++///////.         ]],
    [[      oNNdhhhhhhhs//osso/:---:::///    /yyyso  ..o+-//////////:/.        ]],
    [[       /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.       ]],
    [[         /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`      ]],
    [[           .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:      ]],
    [[           -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`     ]],
    [[]],
    [[]],
    [[]],
}
db.custom_center = {
    {
      icon = '  ',
      desc = 'Recently Opened Files     ',
      action =  'Telescope oldfiles',
    },
    {
      icon = '  ',
      desc = 'New File                  ',
      action =  'DashboardNewFile',
    },
    {
      icon = '  ',
      desc = 'Find  File                ',
      action = 'Telescope find_files',
    },
    {
      icon = '  ',
      desc = 'Configuration             ',
      action = ':e ~/.config/nvim/',
    },
    {
      icon = '  ',
      desc = 'Exit Neovim               ',
      action = ':q!',
    }
}

db.custume_footer = { "Zedd" }
