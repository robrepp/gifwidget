// configGeneral.qml
import QtQuick
import QtQuick.Controls as QQC2
import QtQuick.Layouts
import org.kde.kirigami as Kirigami

Kirigami.FormLayout {
    // Expose properties expected by KConfig
    property string title
    property alias cfg_gifUrl: gifUrlField.text
    property alias cfg_refreshInterval: refreshIntervalSpinBox.value
    property string cfg_radarStation

    // Default values injected by the KConfig loader
    property string cfg_gifUrlDefault
    property string cfg_radarStationDefault
    property int cfg_refreshIntervalDefault

        ListModel {
            id: radarStationsModel

        ListElement { code: ""; name: "Central Region"; active: false }
        ListElement { code: "KABR"; name: "Aberdeen, SD" }
        ListElement { code: "KBIS"; name: "Bismarck, ND" }
        ListElement { code: "KFTG"; name: "Denver/Boulder, CO" }
        ListElement { code: "KDMX"; name: "Des Moines, IA" }
        ListElement { code: "KDTX"; name: "Detroit, MI" }
        ListElement { code: "KDDC"; name: "Dodge City, KS" }
        ListElement { code: "KDLH"; name: "Duluth, MN" }
        ListElement { code: "KCYS"; name: "Cheyenne, WY" }
        ListElement { code: "KLOT"; name: "Chicago, IL" }
        ListElement { code: "KGLD"; name: "Goodland, KS" }
        ListElement { code: "KUEX"; name: "Grand Island/Hastings, NE" }
        ListElement { code: "KGJX"; name: "Grand Junction, CO" }
        ListElement { code: "KGRR"; name: "Grand Rapids, MI" }
        ListElement { code: "KMVX"; name: "Grand Forks, ND" }
        ListElement { code: "KGRB"; name: "Green Bay, WI" }
        ListElement { code: "KIND"; name: "Indianapolis, IN" }
        ListElement { code: "KJKL"; name: "Jackson, KY" }
        ListElement { code: "KARX"; name: "La Crosse, WI" }
        ListElement { code: "KILX"; name: "Lincoln, IL" }
        ListElement { code: "KLVX"; name: "Louisville, KY" }
        ListElement { code: "KMQT"; name: "Marquette, MI" }
        ListElement { code: "KMKX"; name: "Milwaukee, WI" }
        ListElement { code: "KMPX"; name: "Minneapolis, MN" }
        ListElement { code: "KAPX"; name: "Northern Michigan" }
        ListElement { code: "KLNX"; name: "North Platte, NE" }
        ListElement { code: "KIWX"; name: "Northern Indiana" }
        ListElement { code: "KOAX"; name: "Omaha, NE" }
        ListElement { code: "KPAH"; name: "Paducah, KY" }
        ListElement { code: "KEAX"; name: "Kansas City, MO" }
        ListElement { code: "KPUX"; name: "Pueblo, CO" }
        ListElement { code: "KDVN"; name: "Quad Cities, IA" }
        ListElement { code: "KUDX"; name: "Rapid City, SD" }
        ListElement { code: "KRIW"; name: "Riverton, WY" }
        ListElement { code: "KSGF"; name: "Springfield, MO" }
        ListElement { code: "KLSX"; name: "St. Louis, MO" }
        ListElement { code: "KFSD"; name: "Sioux Falls, SD" }
        ListElement { code: "KTWX"; name: "Topeka, KS" }
        ListElement { code: "KICT"; name: "Wichita, KS" }
        ListElement { code: ""; name: "Eastern Region"; active: false }
        ListElement { code: "KVWX"; name: "Evansville, IN" }
        ListElement { code: "KLTX"; name: "Wilmington, NC" }
        ListElement { code: "KCCX"; name: "State College, PA" }
        ListElement { code: "KLWX"; name: "Sterling, VA" }
        ListElement { code: "KFCX"; name: "Roanoke, VA" }
        ListElement { code: "KRAX"; name: "Raleigh/Durham, NC" }
        ListElement { code: "KGYX"; name: "Portland, ME" }
        ListElement { code: "KDIX"; name: "Philadelphia, PA" }
        ListElement { code: "KPBZ"; name: "Pittsburgh, PA" }
        ListElement { code: "KAKQ"; name: "Norfolk, VA" }
        ListElement { code: "KMHX"; name: "Morehead City, NC" }
        ListElement { code: "KGSP"; name: "Greer, SC" }
        ListElement { code: "KILN"; name: "Cincinnati, OH" }
        ListElement { code: "KCLE"; name: "Cleveland, OH" }
        ListElement { code: "KCAE"; name: "Columbia, SC" }
        ListElement { code: "KBGM"; name: "Binghamton, NY" }
        ListElement { code: "KENX"; name: "Albany, NY" }
        ListElement { code: "KBUF"; name: "Buffalo, NY" }
        ListElement { code: "KCXX"; name: "Burlington, VT" }
        ListElement { code: "KCBW"; name: "Caribou, ME" }
        ListElement { code: "KBOX"; name: "Boston, MA" }
        ListElement { code: "KOKX"; name: "New York City, NY" }
        ListElement { code: "KCLX"; name: "Charleston, SC" }
        ListElement { code: "KRLX"; name: "Charleston, WV" }
        ListElement { code: ""; name: "Southern Region"; active: false }
        ListElement { code: "KBRO"; name: "Brownsville, TX" }
        ListElement { code: "KABX"; name: "Albuquerque, NM" }
        ListElement { code: "KAMA"; name: "Amarillo, TX" }
        ListElement { code: "KFFC"; name: "Atlanta, GA" }
        ListElement { code: "KEWX"; name: "San Antonio, TX" }
        ListElement { code: "KBMX"; name: "Birmingham, AL" }
        ListElement { code: "KCRP"; name: "Corpus Christi, TX" }
        ListElement { code: "KFWS"; name: "Dallas/Ft Worth, TX" }
        ListElement { code: "KEPZ"; name: "El Paso, TX" }
        ListElement { code: "KHGX"; name: "Houston, TX" }
        ListElement { code: "KJAX"; name: "Jacksonville, FL" }
        ListElement { code: "KBYX"; name: "Key West, FL" }
        ListElement { code: "KMRX"; name: "Knoxville, TN" }
        ListElement { code: "KLBB"; name: "Lubbock, TX" }
        ListElement { code: "KLZK"; name: "Little Rock, AR" }
        ListElement { code: "KLCH"; name: "Lake Charles, LA" }
        ListElement { code: "KOHX"; name: "Nashville, TN" }
        ListElement { code: "KMLB"; name: "Melbourne, FL" }
        ListElement { code: "KNQA"; name: "Memphis, TN" }
        ListElement { code: "KAMX"; name: "Miami, FL" }
        ListElement { code: "KMAF"; name: "Midland/Odessa, TX" }
        ListElement { code: "KTLX"; name: "Oklahoma City, OK" }
        ListElement { code: "KHTX"; name: "Huntsville, AL" }
        ListElement { code: "KMOB"; name: "Mobile, AL" }
        ListElement { code: "KTLH"; name: "Tallahassee, FL" }
        ListElement { code: "KTBW"; name: "Tampa, FL" }
        ListElement { code: "KSJT"; name: "San Angelo, TX" }
        ListElement { code: "KINX"; name: "Tulsa, OK" }
        ListElement { code: "KSRX"; name: "Western Arkansas" }
        ListElement { code: "KDGX"; name: "Jackson, MS" }
        ListElement { code: "KSHV"; name: "Shreveport, LA" }
        ListElement { code: "KHDC"; name: "New Orleans, LA" }
        ListElement { code: ""; name: "Western Region"; active: false }
        ListElement { code: "KLGX"; name: "Seattle, WA" }
        ListElement { code: "KYUX"; name: "Yuma, AZ" }
        ListElement { code: "KEMX"; name: "Tucson, AZ" }
        ListElement { code: "KOTX"; name: "Spokane, WA" }
        ListElement { code: "KNKX"; name: "San Diego, CA" }
        ListElement { code: "KMUX"; name: "San Francisco, CA" }
        ListElement { code: "KHNX"; name: "San Joaquin Valley, CA" }
        ListElement { code: "KSOX"; name: "Santa Ana Mtns, CA" }
        ListElement { code: "KATX"; name: "Seattle/Tacoma, WA" }
        ListElement { code: "KIWA"; name: "Phoenix, AZ" }
        ListElement { code: "KRTX"; name: "Portland, OR" }
        ListElement { code: "KSFX"; name: "Pocatello, ID" }
        ListElement { code: "KRGX"; name: "Reno, NV" }
        ListElement { code: "KDAX"; name: "Sacramento, CA" }
        ListElement { code: "KMTX"; name: "Salt Lake City, UT" }
        ListElement { code: "KPDT"; name: "Pendleton, OR" }
        ListElement { code: "KMSX"; name: "Missoula, MT" }
        ListElement { code: "KESX"; name: "Las Vegas, NV" }
        ListElement { code: "KVTX"; name: "Los Angeles, CA" }
        ListElement { code: "KMAX"; name: "Medford, OR" }
        ListElement { code: "KFSX"; name: "Flagstaff, AZ" }
        ListElement { code: "KGGW"; name: "Glasgow, MT" }
        ListElement { code: "KLRX"; name: "Elko, NV" }
        ListElement { code: "KBHX"; name: "Eureka, CA" }
        ListElement { code: "KTFX"; name: "Great Falls, MT" }
        ListElement { code: "KCBX"; name: "Boise, ID" }
        ListElement { code: "KBLX"; name: "Billings, MT" }
        ListElement { code: "KICX"; name: "Cedar City, UT" }
        ListElement { code: ""; name: "Pacific Region"; active: false }
        ListElement { code: "PABC"; name: "Bethel, AK" }
        ListElement { code: "PAPD"; name: "Fairbanks, AK" }
        ListElement { code: "PHKM"; name: "Kamuela, HI" }
        ListElement { code: "PAHG"; name: "Kenai, AK" }
        ListElement { code: "PAKC"; name: "King Salmon, AK" }
        ListElement { code: "PAIH"; name: "Middleton Island, AK" }
        ListElement { code: "PHMO"; name: "Molokai, HI" }
        ListElement { code: "PAEC"; name: "Nome, AK" }
        ListElement { code: "TJUA"; name: "San Juan, PR" }
        ListElement { code: "PACG"; name: "Sitka, AK" }
        ListElement { code: "PHKI"; name: "South Kauai, HI" }
        ListElement { code: "PHWA"; name: "South Shore, HI" }
        ListElement { code: ""; name: "Other Sites"; active: false }
        ListElement { code: "KFDR"; name: "Altus AFB, OK" }
        ListElement { code: "PGUA"; name: "Guam" }
        ListElement { code: "KBBX"; name: "Beale AFB, CA" }
        ListElement { code: "KFDX"; name: "Cannon AFB, NM" }
        ListElement { code: "KGWX"; name: "Columbus AFB, MS" }
        ListElement { code: "KDOX"; name: "Dover AFB, DE" }
        ListElement { code: "KDYX"; name: "Dyess AFB, TX" }
        ListElement { code: "KEYX"; name: "Edwards AFB, CA" }
        ListElement { code: "KEVX"; name: "Eglin AFB, FL" }
        ListElement { code: "KHPX"; name: "Fort Campbell, KY" }
        ListElement { code: "KGRK"; name: "Fort Cavazos, TX" }
        ListElement { code: "KTYX"; name: "Fort Drum, NY" }
        ListElement { code: "KPOE"; name: "Fort Johnson, LA" }
        ListElement { code: "KEOX"; name: "Fort Novosel, AL" }
        ListElement { code: "KHDX"; name: "Holloman AFB, NM" }
        ListElement { code: "KDFX"; name: "Laughlin AFB, TX" }
        ListElement { code: "KMXX"; name: "Maxwell AFB, AL" }
        ListElement { code: "KMBX"; name: "Minot AFB, ND" }
        ListElement { code: "KVAX"; name: "Moody AFB, GA" }
        ListElement { code: "KJGX"; name: "Robins AFB, GA" }
        ListElement { code: "KVNX"; name: "Vance AFB, OK" }
    }

    QQC2.ComboBox {
        id: radarStationCombo
        Kirigami.FormData.label: i18n("Radar Station:")
        model: radarStationsModel
        valueRole: "code"
        delegate: QQC2.ItemDelegate {
            required property string code
            required property string name
            required property bool active: true
            width: parent ? parent.width : implicitWidth
            text: code ? code + " - " + i18n(name) : i18n(name)
            enabled: active
        }

        onActivated: {
            var item = radarStationsModel.get(currentIndex)
            if (item.active) {
                cfg_radarStation = item.code
                gifUrlField.text = "https://radar.weather.gov/ridge/standard/" + item.code + "_loop.gif"
            }
        }

        Component.onCompleted: {
            var found = false
            for (var i = 0; i < radarStationsModel.count; ++i) {
                if (radarStationsModel.get(i).code === cfg_radarStation) {
                    currentIndex = i
                    found = true
                    break
                }
            }
            if (!found) {
                for (var j = 0; j < radarStationsModel.count; ++j) {
                    var item = radarStationsModel.get(j)
                    if (item.active) {
                        currentIndex = j
                        cfg_radarStation = item.code
                        gifUrlField.text = "https://radar.weather.gov/ridge/standard/" + item.code + "_loop.gif"
                        break
                    }
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
