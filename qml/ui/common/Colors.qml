pragma Singleton
import QtQuick

// https://g.co/kgs/nV4fts
Item {
    id: root

    readonly property bool dark_theme : true

    readonly property color transparent     : "transparent"
    readonly property color red             : "#d16969"
    readonly property color orange          : "#d88e73"

    readonly property color base0   : dark_theme ? dark.base0 : light.base0
    readonly property color base1   : dark_theme ? dark.base1 : light.base1
    readonly property color base2   : dark_theme ? dark.base2 : light.base2
    readonly property color base3   : dark_theme ? dark.base3 : light.base3
    readonly property color base4   : dark_theme ? dark.base4 : light.base4
    readonly property color base5   : dark_theme ? dark.base5 : light.base5
    readonly property color base6   : dark_theme ? dark.base6 : light.base6

    Item {
        id: dark
        readonly property color base0   : "#3e3e3e" //background
        readonly property color base1   : "#d4d4d4" //foreground
        readonly property color base2   : "#343434" //box or container
        readonly property color base3   : "#222222" //border of containers
        readonly property color base4   : "#2f2f2f" //separation line on base0
        readonly property color base5   : "#2f2f2f" //separation line on base2
        readonly property color base6   : "#3e3e3e" //highligh (mouse hover)
    }

    //TODO update light colors
    Item {
        id: light
        readonly property color base0   : "#3e3e3e" //background
        readonly property color base1   : "#d4d4d4" //foreground
        readonly property color base2   : "#343434" //box or container
        readonly property color base3   : "#222222" //border of containers
        readonly property color base4   : "#2f2f2f" //separation line on base0
        readonly property color base5   : "#2f2f2f" //separation line on base2
        readonly property color base6   : "#3e3e3e" //highligh (mouse hover)
    }

}
