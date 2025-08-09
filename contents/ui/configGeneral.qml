// configGeneral.qml
import QtQuick
import QtQuick.Controls as QQC2
import QtQuick.Layouts
import org.kde.kirigami as Kirigami
import org.kde.kcmutils as KCM

KCM.SimpleKCM {
    property alias cfg_gifUrl: gifUrlField.text
    property alias cfg_refreshInterval: refreshIntervalSpinBox.value
    // Store selected radar station code. Cannot alias to ComboBox.currentValue
    // because it is read-only.
    property string cfg_radarStation

    ListModel {
        id: radarStationsModel

        ListElement { stationCode: "KABR"; stationName: "Aberdeen, SD" }
        ListElement { stationCode: "KBIS"; stationName: "Bismarck, ND" }
        ListElement { stationCode: "KFTG"; stationName: "Denver/Boulder, CO" }
        ListElement { stationCode: "KDMX"; stationName: "Des Moines, IA" }
        ListElement { stationCode: "KDTX"; stationName: "Detroit, MI" }
        ListElement { stationCode: "KDDC"; stationName: "Dodge City, KS" }
        ListElement { stationCode: "KDLH"; stationName: "Duluth, MN" }
        ListElement { stationCode: "KCYS"; stationName: "Cheyenne, WY" }
        ListElement { stationCode: "KLOT"; stationName: "Chicago, IL" }
        ListElement { stationCode: "KGLD"; stationName: "Goodland, KS" }
        ListElement { stationCode: "KUEX"; stationName: "Grand Island/Hastings, NE" }
        ListElement { stationCode: "KGJX"; stationName: "Grand Junction, CO" }
        ListElement { stationCode: "KGRR"; stationName: "Grand Rapids, MI" }
        ListElement { stationCode: "KMVX"; stationName: "Grand Forks, ND" }
        ListElement { stationCode: "KGRB"; stationName: "Green Bay, WI" }
        ListElement { stationCode: "KIND"; stationName: "Indianapolis, IN" }
        ListElement { stationCode: "KJKL"; stationName: "Jackson, KY" }
        ListElement { stationCode: "KARX"; stationName: "La Crosse, WI" }
        ListElement { stationCode: "KILX"; stationName: "Lincoln, IL" }
        ListElement { stationCode: "KLVX"; stationName: "Louisville, KY" }
        ListElement { stationCode: "KMQT"; stationName: "Marquette, MI" }
        ListElement { stationCode: "KMKX"; stationName: "Milwaukee, WI" }
        ListElement { stationCode: "KMPX"; stationName: "Minneapolis, MN" }
        ListElement { stationCode: "KAPX"; stationName: "Northern Michigan" }
        ListElement { stationCode: "KLNX"; stationName: "North Platte, NE" }
        ListElement { stationCode: "KIWX"; stationName: "Northern Indiana" }
        ListElement { stationCode: "KOAX"; stationName: "Omaha, NE" }
        ListElement { stationCode: "KPAH"; stationName: "Paducah, KY" }
        ListElement { stationCode: "KEAX"; stationName: "Kansas City, MO" }
        ListElement { stationCode: "KPUX"; stationName: "Pueblo, CO" }
        ListElement { stationCode: "KDVN"; stationName: "Quad Cities, IA" }
        ListElement { stationCode: "KUDX"; stationName: "Rapid City, SD" }
        ListElement { stationCode: "KRIW"; stationName: "Riverton, WY" }
        ListElement { stationCode: "KSGF"; stationName: "Springfield, MO" }
        ListElement { stationCode: "KLSX"; stationName: "St. Louis, MO" }
        ListElement { stationCode: "KFSD"; stationName: "Sioux Falls, SD" }
        ListElement { stationCode: "KTWX"; stationName: "Topeka, KS" }
        ListElement { stationCode: "KICT"; stationName: "Wichita, KS" }
        ListElement { stationCode: "KVWX"; stationName: "Evansville, IN" }
        ListElement { stationCode: "KLTX"; stationName: "Wilmington, NC" }
        ListElement { stationCode: "KCCX"; stationName: "State College, PA" }
        ListElement { stationCode: "KLWX"; stationName: "Sterling, VA" }
        ListElement { stationCode: "KFCX"; stationName: "Roanoke, VA" }
        ListElement { stationCode: "KRAX"; stationName: "Raleigh/Durham, NC" }
        ListElement { stationCode: "KGYX"; stationName: "Portland, ME" }
        ListElement { stationCode: "KDIX"; stationName: "Philadelphia, PA" }
        ListElement { stationCode: "KPBZ"; stationName: "Pittsburgh, PA" }
        ListElement { stationCode: "KAKQ"; stationName: "Norfolk, VA" }
        ListElement { stationCode: "KMHX"; stationName: "Morehead City, NC" }
        ListElement { stationCode: "KGSP"; stationName: "Greer, SC" }
        ListElement { stationCode: "KILN"; stationName: "Cincinnati, OH" }
        ListElement { stationCode: "KCLE"; stationName: "Cleveland, OH" }
        ListElement { stationCode: "KCAE"; stationName: "Columbia, SC" }
        ListElement { stationCode: "KBGM"; stationName: "Binghamton, NY" }
        ListElement { stationCode: "KENX"; stationName: "Albany, NY" }
        ListElement { stationCode: "KBUF"; stationName: "Buffalo, NY" }
        ListElement { stationCode: "KCXX"; stationName: "Burlington, VT" }
        ListElement { stationCode: "KCBW"; stationName: "Caribou, ME" }
        ListElement { stationCode: "KBOX"; stationName: "Boston, MA" }
        ListElement { stationCode: "KOKX"; stationName: "New York City, NY" }
        ListElement { stationCode: "KCLX"; stationName: "Charleston, SC" }
        ListElement { stationCode: "KRLX"; stationName: "Charleston, WV" }
        ListElement { stationCode: "KBRO"; stationName: "Brownsville, TX" }
        ListElement { stationCode: "KABX"; stationName: "Albuquerque, NM" }
        ListElement { stationCode: "KAMA"; stationName: "Amarillo, TX" }
        ListElement { stationCode: "KFFC"; stationName: "Atlanta, GA" }
        ListElement { stationCode: "KEWX"; stationName: "San Antonio, TX" }
        ListElement { stationCode: "KBMX"; stationName: "Birmingham, AL" }
        ListElement { stationCode: "KCRP"; stationName: "Corpus Christi, TX" }
        ListElement { stationCode: "KFWS"; stationName: "Dallas/Ft Worth, TX" }
        ListElement { stationCode: "KEPZ"; stationName: "El Paso, TX" }
        ListElement { stationCode: "KHGX"; stationName: "Houston, TX" }
        ListElement { stationCode: "KJAX"; stationName: "Jacksonville, FL" }
        ListElement { stationCode: "KBYX"; stationName: "Key West, FL" }
        ListElement { stationCode: "KMRX"; stationName: "Knoxville, TN" }
        ListElement { stationCode: "KLBB"; stationName: "Lubbock, TX" }
        ListElement { stationCode: "KLZK"; stationName: "Little Rock, AR" }
        ListElement { stationCode: "KLCH"; stationName: "Lake Charles, LA" }
        ListElement { stationCode: "KOHX"; stationName: "Nashville, TN" }
        ListElement { stationCode: "KMLB"; stationName: "Melbourne, FL" }
        ListElement { stationCode: "KNQA"; stationName: "Memphis, TN" }
        ListElement { stationCode: "KAMX"; stationName: "Miami, FL" }
        ListElement { stationCode: "KMAF"; stationName: "Midland/Odessa, TX" }
        ListElement { stationCode: "KTLX"; stationName: "Oklahoma City, OK" }
        ListElement { stationCode: "KHTX"; stationName: "Huntsville, AL" }
        ListElement { stationCode: "KMOB"; stationName: "Mobile, AL" }
        ListElement { stationCode: "KTLH"; stationName: "Tallahassee, FL" }
        ListElement { stationCode: "KTBW"; stationName: "Tampa, FL" }
        ListElement { stationCode: "KSJT"; stationName: "San Angelo, TX" }
        ListElement { stationCode: "KINX"; stationName: "Tulsa, OK" }
        ListElement { stationCode: "KSRX"; stationName: "Western Arkansas" }
        ListElement { stationCode: "KDGX"; stationName: "Jackson, MS" }
        ListElement { stationCode: "KSHV"; stationName: "Shreveport, LA" }
        ListElement { stationCode: "KHDC"; stationName: "New Orleans, LA" }
        ListElement { stationCode: "KLGX"; stationName: "Seattle, WA" }
        ListElement { stationCode: "KYUX"; stationName: "Yuma, AZ" }
        ListElement { stationCode: "KEMX"; stationName: "Tucson, AZ" }
        ListElement { stationCode: "KOTX"; stationName: "Spokane, WA" }
        ListElement { stationCode: "KNKX"; stationName: "San Diego, CA" }
        ListElement { stationCode: "KMUX"; stationName: "San Francisco, CA" }
        ListElement { stationCode: "KHNX"; stationName: "San Joaquin Valley, CA" }
        ListElement { stationCode: "KSOX"; stationName: "Santa Ana Mtns, CA" }
        ListElement { stationCode: "KATX"; stationName: "Seattle/Tacoma, WA" }
        ListElement { stationCode: "KIWA"; stationName: "Phoenix, AZ" }
        ListElement { stationCode: "KRTX"; stationName: "Portland, OR" }
        ListElement { stationCode: "KSFX"; stationName: "Pocatello, ID" }
        ListElement { stationCode: "KRGX"; stationName: "Reno, NV" }
        ListElement { stationCode: "KDAX"; stationName: "Sacramento, CA" }
        ListElement { stationCode: "KMTX"; stationName: "Salt Lake City, UT" }
        ListElement { stationCode: "KPDT"; stationName: "Pendleton, OR" }
        ListElement { stationCode: "KMSX"; stationName: "Missoula, MT" }
        ListElement { stationCode: "KESX"; stationName: "Las Vegas, NV" }
        ListElement { stationCode: "KVTX"; stationName: "Los Angeles, CA" }
        ListElement { stationCode: "KMAX"; stationName: "Medford, OR" }
        ListElement { stationCode: "KFSX"; stationName: "Flagstaff, AZ" }
        ListElement { stationCode: "KGGW"; stationName: "Glasgow, MT" }
        ListElement { stationCode: "KLRX"; stationName: "Elko, NV" }
        ListElement { stationCode: "KBHX"; stationName: "Eureka, CA" }
        ListElement { stationCode: "KTFX"; stationName: "Great Falls, MT" }
        ListElement { stationCode: "KCBX"; stationName: "Boise, ID" }
        ListElement { stationCode: "KBLX"; stationName: "Billings, MT" }
        ListElement { stationCode: "KICX"; stationName: "Cedar City, UT" }
        ListElement { stationCode: "PABC"; stationName: "Bethel, AK" }
        ListElement { stationCode: "PAPD"; stationName: "Fairbanks, AK" }
        ListElement { stationCode: "PHKM"; stationName: "Kamuela, HI" }
        ListElement { stationCode: "PAHG"; stationName: "Kenai, AK" }
        ListElement { stationCode: "PAKC"; stationName: "King Salmon, AK" }
        ListElement { stationCode: "PAIH"; stationName: "Middleton Island, AK" }
        ListElement { stationCode: "PHMO"; stationName: "Molokai, HI" }
        ListElement { stationCode: "PAEC"; stationName: "Nome, AK" }
        ListElement { stationCode: "TJUA"; stationName: "San Juan, PR" }
        ListElement { stationCode: "PACG"; stationName: "Sitka, AK" }
        ListElement { stationCode: "PHKI"; stationName: "South Kauai, HI" }
        ListElement { stationCode: "PHWA"; stationName: "South Shore, HI" }
        ListElement { stationCode: "KFDR"; stationName: "Altus AFB, OK" }
        ListElement { stationCode: "PGUA"; stationName: "Guam" }
        ListElement { stationCode: "KBBX"; stationName: "Beale AFB, CA" }
        ListElement { stationCode: "KFDX"; stationName: "Cannon AFB, NM" }
        ListElement { stationCode: "KGWX"; stationName: "Columbus AFB, MS" }
        ListElement { stationCode: "KDOX"; stationName: "Dover AFB, DE" }
        ListElement { stationCode: "KDYX"; stationName: "Dyess AFB, TX" }
        ListElement { stationCode: "KEYX"; stationName: "Edwards AFB, CA" }
        ListElement { stationCode: "KEVX"; stationName: "Eglin AFB, FL" }
        ListElement { stationCode: "KHPX"; stationName: "Fort Campbell, KY" }
        ListElement { stationCode: "KGRK"; stationName: "Fort Cavazos, TX" }
        ListElement { stationCode: "KTYX"; stationName: "Fort Drum, NY" }
        ListElement { stationCode: "KPOE"; stationName: "Fort Johnson, LA" }
        ListElement { stationCode: "KEOX"; stationName: "Fort Novosel, AL" }
        ListElement { stationCode: "KHDX"; stationName: "Holloman AFB, NM" }
        ListElement { stationCode: "KDFX"; stationName: "Laughlin AFB, TX" }
        ListElement { stationCode: "KMXX"; stationName: "Maxwell AFB, AL" }
        ListElement { stationCode: "KMBX"; stationName: "Minot AFB, ND" }
        ListElement { stationCode: "KVAX"; stationName: "Moody AFB, GA" }
        ListElement { stationCode: "KJGX"; stationName: "Robins AFB, GA" }
        ListElement { stationCode: "KVNX"; stationName: "Vance AFB, OK" }
    }

    ListModel {
        id: displayModel
        Component.onCompleted: {
            for (var i = 0; i < radarStationsModel.count; ++i) {
                var s = radarStationsModel.get(i);
                append({ code: s.stationCode, name: s.stationName, display: s.stationCode + " - " + s.stationName })
            }
        }
    }

    Kirigami.FormLayout {
        QQC2.ComboBox {
            id: radarStationCombo
            Kirigami.FormData.label: i18n("Radar Station:")
            model: displayModel
            textRole: "display"
            valueRole: "code"

            onActivated: {
                cfg_radarStation = currentValue
                gifUrlField.text = "https://radar.weather.gov/ridge/standard/" + currentValue + "_loop.gif"
            }

            Component.onCompleted: {
                for (var i = 0; i < displayModel.count; ++i) {
                    if (displayModel.get(i).code === cfg_radarStation) {
                        currentIndex = i
                        break
                    }
                }
            }
        }

        QQC2.TextField {
            id: gifUrlField
            Kirigami.FormData.label: i18n("Custom GIF URL:")
            placeholderText: i18n("Or enter custom URL here")
        }

        QQC2.SpinBox {
            id: refreshIntervalSpinBox
            Kirigami.FormData.label: i18n("Refresh interval (minutes):")
            from: 1
            to: 1440
            stepSize: 1
        }
    }
}
