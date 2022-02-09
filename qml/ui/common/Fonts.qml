pragma Singleton
import QtQuick

Item {
    id: root

    readonly property alias fontAwesomeRegular      : fontAwesomeRegular
    readonly property alias fontAwesomeBrands       : fontAwesomeBrands
    readonly property alias fontAwesomeSolid        : fontAwesomeSolid

    readonly property alias lineAwesomeRegular      : lineAwesomeRegular
    readonly property alias lineAwesomeBrands       : lineAwesomeBrands
    readonly property alias lineAwesomeSolid        : lineAwesomeSolid

    readonly property alias openSansRegular         : openSansRegular
    readonly property alias openSansLight           : openSansLight
    readonly property alias openSansMedium          : openSansMedium
    readonly property alias openSansBold            : openSansBold

    FontLoader {
        id: fontAwesomeRegular
        source: "fonts/font-awesome/fa-regular-400.ttf"
    }

    FontLoader {
        id: fontAwesomeBrands
        source: "fonts/font-awesome/fa-brands-400.ttf"
    }


    FontLoader {
        id: fontAwesomeSolid
        source: "fonts/font-awesome/fa-solid-900.ttf"
    }

    FontLoader {
        id: lineAwesomeRegular
        source: "fonts/line-awesome/la-regular-400.ttf"
    }

    FontLoader {
        id: lineAwesomeBrands
        source: "fonts/line-awesome/la-brands-400.ttf"
    }


    FontLoader {
        id: lineAwesomeSolid
        source: "fonts/line-awesome/la-solid-900.ttf"
    }

    FontLoader {
        id: openSansRegular
        source: "fonts/open-sans/OpenSans-Regular.ttf"
    }

    FontLoader {
        id: openSansLight
        source: "fonts/open-sans/OpenSans-Light.ttf"
    }

    FontLoader {
        id: openSansMedium
        source: "fonts/open-sans/OpenSans-Medium.ttf"
    }

    FontLoader {
        id: openSansBold
        source: "fonts/open-sans/OpenSans-Bold.ttf"
    }
}
