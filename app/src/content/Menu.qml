import QtQuick 2.15

Item {
    Rectangle {
        id: menu

        width: parent.width
        height: parent.height * 0.13

        anchors.bottom: parent.bottom

        Rectangle {
            id: home_style
            width: parent.width * 0.333
            height: parent.height

            anchors.left: parent.left

            Image {
                id: style_image

                source: "images/home_style.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit

                MouseArea {
                   anchors.fill: parent
                   onClicked: {
                       console.log("style")
                       styleLoader.visible = true
                       homeLoader.visible = false
                       mapLoader.visible = false
                       style_image.source = "images/style_style.png"
                       home_image.source = "images/style_home.png"
                       map_image.source = "images/style_map.png"
                   }
               }
            }
        }

        Rectangle {
            id: home_home
            width: parent.width * 0.333
            height: parent.height

            anchors.left: home_style.right

            Image {
                id: home_image

                source: "images/home_home.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit

                MouseArea {
                   anchors.fill: parent
                   onClicked: {
                       console.log("home")
                       styleLoader.visible = false
                       homeLoader.visible = true
                       mapLoader.visible = false
                       style_image.source = "images/home_style.png"
                       home_image.source = "images/home_home.png"
                       map_image.source = "images/home_map.png"
                   }
               }
            }

        }

        Rectangle {
            id: home_map
            width: parent.width * 0.333
            height: parent.height

            anchors.left: home_home.right

            Image {
                id: map_image

                source: "images/home_map.png"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit

                MouseArea {
                   anchors.fill: parent
                   onClicked: {
                       console.log("map")
                       styleLoader.visible = false
                       homeLoader.visible = false
                       mapLoader.visible = true
                       style_image.source = "images/map_style.png"
                       home_image.source = "images/map_home.png"
                       map_image.source = "images/map_map.png"
                   }
               }
            }
        }
    }
}
