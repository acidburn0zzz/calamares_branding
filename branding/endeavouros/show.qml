/* === This file is part of Calamares - <https://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *   Copyright 2018, Adriaan de Groot <groot@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 30000
        running: true
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {

        Image {
            id: background_2
            source: "terminal-slide.png"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }


    Slide {

        Image {
            id: background_3
            source: "community-slide.png"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }
    
        Slide {

        Image {
            id: background_4
            source: "forum-slide.png"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }
    
            Slide {

        Image {
            id: background_5
            source: "distribution-slide.png"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }
    
            Slide {

        Image {
            id: background_6
            source: "development-slide.png"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }
    
            Slide {

        Image {
            id: background_7
            source: "softlanding-slide.png"
            width: 617; height: 430
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

    }


    // When this slideshow is loaded as a V1 slideshow, only
    // activatedInCalamares is set, which starts the timer (see above).
    //
    // In V2, also the onActivate() and onLeave() methods are called.
    // These example functions log a message (and re-start the slides
    // from the first).
    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }
    
    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }

}
