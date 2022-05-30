# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


### Localization for the App UI of Profiler


# Naming convention for l10n IDs: "ComponentName--string-summary".
# This allows us to minimize the risk of conflicting IDs throughout the app.
# Please sort alphabetically by (component name), and
# keep strings in order of appearance.


## The following feature names must be treated as a brand. They cannot be translated.

-firefox-brand-name = Firefox
-profiler-brand-name = Firefox Profiler
-profiler-brand-short-name = Profiler
-firefox-nightly-brand-name = Firefox Nightly

## AppHeader
## This is used at the top of the homepage and other content pages.

AppHeader--app-header = <header>{ -profiler-brand-name }</header> – <subheader>Web-app foar prestaasjeanalyse fan { -firefox-brand-name }</subheader>
AppHeader--github-icon =
    .title = Nei ús Git-repository (dizze wurdt yn in nij finster iepene)

## AppViewRouter
## This is used for displaying errors when loading the application.

AppViewRouter--error-unpublished = Kin it profyl net ophelje fan { -firefox-brand-name }.
AppViewRouter--error-from-file = Kin it bestân net lêze of it profyl deryn ûntlede.
AppViewRouter--error-local = Noch net ymplemintearre.
AppViewRouter--error-public = Kin it profyl net downloade.
AppViewRouter--error-from-url = Kin it profyl net downloade.
AppViewRouter--error-compare = Kin de profilen net ophelje.
# This error message is displayed when a Safari-specific error state is encountered.
# Importing profiles from URLs such as http://127.0.0.1:someport/ is not possible in Safari.
# https://profiler.firefox.com/from-url/http%3A%2F%2F127.0.0.1%3A3000%2Fprofile.json/
AppViewRouter--error-from-localhost-url-safari =
    Fanwegen in <a>spesifike beheining yn Safari</a> kin { -profiler-brand-name } gjin
    profilen fan de lokale kompjûter yn dizze browser ymportearje. Iepenje yn stee dêrfan
    dizze side yn { -firefox-brand-name } of Chrome.
    .title = Safari kan geen lokale profielen importeren
AppViewRouter--route-not-found--home =
    .specialMessage = De URL dy’t jo probearre te berikken, waard net werkend.

## CallNodeContextMenu
## This is used as a context menu for the Call Tree, Flame Graph and Stack Chart
## panels.

CallNodeContextMenu--transform-merge-function = Funksje gearfoegje
    .title =
        As jo in funksje gearfoegje, wurdt dizze út it profyl fuortsmiten en wurdt de tiid tawezen oan
        de funksje dy’t dizze oanroppen hat. Dit bart oeral wêr’t de funksje
        yn de beam oanroppen waard.
CallNodeContextMenu--transform-merge-call-node = Allinnich node gearfoegje
    .title =
        As jo in node gearfoegje, wurdt dizze út it profyl fuortsmiten en de tiid tawezen oan de
        funksjenode dy’t dizze oanroppen hat. It smyt de funksje allinnich fan dat
        spesifike part fan de beam fuort. Oare plakken fan wêr út de funksje oanroppen waard
        bliuwe yn it profyl.
# This is used as the context menu item title for "Focus on function" and "Focus
# on function (inverted)" transforms.
CallNodeContextMenu--transform-focus-function-title =
    As jo fokusje op in funksje, wurdt elk foarbyld dat dy funksje net befettet
    fuortsmite. Dêrby wurdt de oanropbeam opnij root, sadat de funksje
    de iennige root fan de beam is. Dit kin meardere funksje-oanropsites yn in profyl
    kombinearje yn ien oanropnode.
CallNodeContextMenu--transform-focus-function = Fokus op funksje
    .title = { CallNodeContextMenu--transform-focus-function-title }
CallNodeContextMenu--transform-focus-function-inverted = Fokus op funksje (omkeard)
    .title = { CallNodeContextMenu--transform-focus-function-title }
CallNodeContextMenu--transform-focus-subtree = Allinnich fokus op substruktuer
    .title =
        As jo op in substruktuer fokust, wurdt elk foarbyld dat dat spesifike part
        fan de oanropbeam net befettet fuortsmiten. It selektearret in tûke fan de oanropbeam,
        echter dit bart allinnich foar dy inkelde oanropnode. Alle oare oanroppen
        fan de funksje wurde negearre.
CallNodeContextMenu--transform-collapse-function-subtree = Funksje ynklappe
    .title =
        As jo in funksje ynklappe, wurdt alles dat dizze oanroppen hat fuortsmiten en alle
        tiid oan de funksje tawezen. Dit kin helpe in profyl dat koade oanropt dy’t net
        analysearre hoege te wurden te ferienfâldigjen.
# This is used as the context menu item to apply the "Collapse resource" transform.
# Variables:
#   $nameForResource (String) - Name of the resource to collapse.
CallNodeContextMenu--transform-collapse-resource = <strong>{ $nameForResource }</strong> ynklappe
    .title =
        As jo in boarne ynklappe, wurde alle oanroppen fan dy boarne
        ôfflakke ta ien inkelde ynklappe oanropnode.
CallNodeContextMenu--transform-collapse-direct-recursion = Direkte rekursy ynklappe
    .title =
        As jo direkte rekursy ynklappe, wurde alle oanroppen dy’t hieltyd wer nei
        deselde funksje tebekfalle fuortsmiten.
CallNodeContextMenu--transform-drop-function = Meunsters mei dizze funksje weilitte
    .title =
        As jo meunsters weilitte, wurdt harren tiid út it profyl fuortsmiten. Dit is nuttich om
        tiidsynformaasje dy’t net relevant foar de analyze is te eliminearjen.
CallNodeContextMenu--expand-all = Alles útklappe
# Searchfox is a source code indexing tool for Mozilla Firefox.
# See: https://searchfox.org/
CallNodeContextMenu--searchfox = De funksjenamme op Searchfox opsykje
CallNodeContextMenu--copy-function-name = Funksjenamme kopiearje
CallNodeContextMenu--copy-script-url = Script-URL kopiearje
CallNodeContextMenu--copy-stack = Stack kopiearje

## CallTree
## This is the component for Call Tree panel.

CallTree--tracing-ms-total = Rintiid (ms)
    .title =
        De ‘totale’ rintiid befettet in gearfetting fan alle tiid wêryn dizze
        funksje harren op de stack wie. Dit omfettet de tiid wêryn de
        funksje wurklik útfierd waard en de tiid dy’t spandearre waard
        oan oanroppen fan dizze funksje út.
CallTree--tracing-ms-self = Sels (ms)
    .title =
        De ‘sels’-tiid omfettet allinnich de tiid wêryn de funksje harren oan it
        ein fan de stack wie. As dizze funksje oare funksjes oanroppen hat,
        is de tiid fan de ‘oare’ funksje net meinommen. De ‘sels’-tiid is nuttich
        foar it begryp fan hokker tiid wurklik yn it programma bestege is.

## Call tree "badges" (icons) with tooltips
##
## These inlining badges are displayed in the call tree in front of some
## functions for native code (C / C++ / Rust). They're a small "inl" icon with
## a tooltip.


## CallTreeSidebar
## This is the sidebar component that is used in Call Tree and Flame Graph panels.


## CompareHome
## This is used in the page to compare two profiles.
## See: https://profiler.firefox.com/compare/

CompareHome--form-label-profile1 = Profyl 1:
CompareHome--form-label-profile2 = Profyl 2:
CompareHome--submit-button =
    .value = Profilen ophelje

## DebugWarning
## This is displayed at the top of the analysis page when the loaded profile is
## a debug build of Firefox.


## Details
## This is the bottom panel in the analysis UI. They are generic strings to be
## used at the bottom part of the UI.

Details--open-sidebar-button =
    .title = De sidebalke iepenje
Details--close-sidebar-button =
    .title = De sidebalke slute
Details--error-boundary-message =
    .message = Uh oh, der is in ûnbekende flater yn dit paniel bard.

## Footer Links

FooterLinks--legal = Juridysk
FooterLinks--Privacy = Privacy
FooterLinks--Cookies = Cookies
FooterLinks--languageSwitcher--select =
    .title = Taal wizigje
FooterLinks--hide-button =
    .title = Fuottekstkeppelingen ferstopje
    .aria-label = Fuottekstkeppelingen ferstopje

## FullTimeline
## The timeline component of the full view in the analysis UI at the top of the
## page.

FullTimeline--graph-type = Grafyktype:
FullTimeline--categories-with-cpu = Kategoryen mei CPU
FullTimeline--categories = Kategoryen
FullTimeline--stack-height = Stackhichte
# This string is used as the text of the track selection button.
# Displays the ratio of visible tracks count to total tracks count in the timeline.
# We have spans here to make the numbers bold.
# Variables:
#   $visibleTrackCount (Number) - Visible track count in the timeline
#   $totalTrackCount (Number) - Total track count in the timeline
FullTimeline--tracks-button = <span>{ $visibleTrackCount }</span> / <span>{ $totalTrackCount }</span> tracks

## Home page

Home--upload-from-file-input-button = In profyl út in bestân lade
Home--upload-from-url-button = In profyl fan in URL lade
Home--load-from-url-submit-button =
    .value = Lade
Home--documentation-button = Dokumintaasje
Home--menu-button = Menuknop { -profiler-brand-name } ynskeakelje
Home--instructions-title = Profilen besjen en opnimme
Home--record-instructions-start-stop = Profilearjen stopje en starte
Home--record-instructions-capture-load = Profyl fêstlizze en lade

## IdleSearchField
## The component that is used for all the search inputs in the application.


## JsTracerSettings
## JSTracer is an experimental feature and it's currently disabled. See Bug 1565788.


## ListOfPublishedProfiles
## This is the component that displays all the profiles the user has uploaded.
## It's displayed both in the homepage and in the uploaded recordings page.

ListOfPublishedProfiles--uploaded-profile-information-list-empty = Der is noch gjin profyl opladen!

## MarkerContextMenu
## This is used as a context menu for the Marker Chart, Marker Table and Network
## panels.

MarkerContextMenu--copy-url = URL kopiearje
MarkerContextMenu--copy-as-json = Kopiearje as JSON

## MarkerSettings
## This is used in all panels related to markers.


## MarkerSidebar
## This is the sidebar component that is used in Marker Table panel.


## MarkerTable
## This is the component for Marker Table panel.

MarkerTable--start = Start
MarkerTable--duration = Doer
MarkerTable--type = Type
MarkerTable--description = Beskriuwing

## MenuButtons
## These strings are used for the buttons at the top of the profile viewer.

MenuButtons--index--metaInfo-button =
    .label = Profylynfo
MenuButtons--index--full-view = Folslein byld
MenuButtons--index--cancel-upload = Opladen annulearje
MenuButtons--index--share-upload =
    .label = Lokaal profyl oplade
MenuButtons--index--share-re-upload =
    .label = Opnij oplade
MenuButtons--index--share-error-uploading =
    .label = Flater by it opladen
MenuButtons--index--revert = Tebek nei orizjineel profyl
MenuButtons--index--docs = Dokuminten
MenuButtons--permalink--button =
    .label = Permalink

## MetaInfo panel
## These strings are used in the panel containing the meta information about
## the current profile.

MenuButtons--index--profile-info-uploaded-label = Opladen:
MenuButtons--index--profile-info-uploaded-actions = Fuortsmite
MenuButtons--index--metaInfo-subtitle = Profylynformaasje
MenuButtons--metaInfo--symbols = Symboalen:
MenuButtons--metaInfo--profile-symbolicated = Profyl is symbolisearre
MenuButtons--metaInfo--profile-not-symbolicated = Profyl is net symbolisearre
MenuButtons--metaInfo--resymbolicate-profile = Profyl opnij symbolisearje
MenuButtons--metaInfo--symbolicate-profile = Profyl symbolisearje
MenuButtons--metaInfo--attempting-resymbolicate = Besykjen ta opnij symbolisearjen profyl
MenuButtons--metaInfo--currently-symbolicating = Profyl wurdt symbolisearre
MenuButtons--metaInfo--cpu = CPU:
# This string is used when we have the information about both physical and
# logical CPU cores.
# Variable:
#   $physicalCPUs (Number), $logicalCPUs (Number) - Number of Physical and Logical CPU Cores
MenuButtons--metaInfo--physical-and-logical-cpu =
    { $physicalCPUs ->
        [one] { $physicalCPUs } fysike kearn,
       *[other] { $physicalCPUs } fysike kearnen,
    }{ $logicalCPUs ->
        [one] { $logicalCPUs } logyske kearn
       *[other] { $logicalCPUs } logyske kearnen
    }
# This string is used when we only have the information about the number of
# physical CPU cores.
# Variable:
#   $physicalCPUs (Number) - Number of Physical CPU Cores
MenuButtons--metaInfo--physical-cpu =
    { $physicalCPUs ->
        [one] { $physicalCPUs } fysike kearn
       *[other] { $physicalCPUs } fysike kearnen
    }
# This string is used when we only have the information only the number of
# logical CPU cores.
# Variable:
#   $logicalCPUs (Number) - Number of logical CPU Cores
MenuButtons--metaInfo--logical-cpu =
    { $logicalCPUs ->
        [one] { $logicalCPUs } logyske kearn
       *[other] { $logicalCPUs } logyske kearnen
    }
MenuButtons--metaInfo--main-process-started = Haadproses start:
MenuButtons--metaInfo--interval = Ynterfal:
MenuButtons--metaInfo--buffer-capacity = Bufferkapasiteit:
MenuButtons--metaInfo--buffer-duration = Bufferdoer:
# Buffer Duration in Seconds in Meta Info Panel
# Variable:
#   $configurationDuration (Number) - Configuration Duration in Seconds
MenuButtons--metaInfo--buffer-duration-seconds =
    { $configurationDuration ->
        [one] { $configurationDuration } sekonde
       *[other] { $configurationDuration } sekonden
    }
# Adjective refers to the buffer duration
MenuButtons--metaInfo--buffer-duration-unlimited = Unbeheind
MenuButtons--metaInfo--application = Tapassing
MenuButtons--metaInfo--name-and-version = Namme en ferzje:
MenuButtons--metaInfo--update-channel = Fernijkanaal:
MenuButtons--metaInfo--build-id = Build-ID:
MenuButtons--metaInfo--build-type = Buildtype:

## Strings refer to specific types of builds, and should be kept in English.

MenuButtons--metaInfo--build-type-debug = Debugge
MenuButtons--metaInfo--build-type-opt = Opt

##

MenuButtons--metaInfo--platform = Platfoarm
MenuButtons--metaInfo--device = Apparaat:
# OS means Operating System. This describes the platform a profile was captured on.
MenuButtons--metaInfo--os = Bestjoeringssysteem:
# ABI means Application Binary Interface. This describes the platform a profile was captured on.
MenuButtons--metaInfo--abi = ABI:
MenuButtons--metaInfo--visual-metrics = Fisuele statistiken
MenuButtons--metaInfo--speed-index = Snelheidsyndeks:
# “Perceptual” is the name of an index provided by sitespeed.io, and should be kept in English.
MenuButtons--metaInfo--perceptual-speed-index = Perceptual-snelheidsyndeks:
# “Contentful” is the name of an index provided by sitespeed.io, and should be kept in English.
MenuButtons--metaInfo--contentful-speed-Index = Contentful-snelheidsyndeks:
MenuButtons--metaInfo-renderRowOfList-label-features = Funksjes:
MenuButtons--metaInfo-renderRowOfList-label-threads-filter = Threadsfilter:
MenuButtons--metaInfo-renderRowOfList-label-extensions = Utwreidingen:

## Overhead refers to the additional resources used to run the profiler.
## These strings are displayed at the bottom of the "Profile Info" panel.

MenuButtons--metaOverheadStatistics-subtitle = { -profiler-brand-short-name }-overhead
MenuButtons--metaOverheadStatistics-mean = Gemiddeld
MenuButtons--metaOverheadStatistics-max = Maks
MenuButtons--metaOverheadStatistics-min = Min
MenuButtons--metaOverheadStatistics-statkeys-overhead = Overhead
    .title = Tiid om alle threads te bemeunsterjen.
MenuButtons--metaOverheadStatistics-statkeys-cleaning = Opskjinje
    .title = Tiid om ferrûne gegevens te wiskjen.
MenuButtons--metaOverheadStatistics-statkeys-counter = Teller
    .title = Tiid om alle tellers te sammeljen.
MenuButtons--metaOverheadStatistics-statkeys-interval = Ynterfal
    .title = Waarnommen ynterfal tusken twa meunsters.
MenuButtons--metaOverheadStatistics-statkeys-lockings = Beskoattelingen
    .title = Tiid om de beskoatteling te krijen eardat bemeunstere wurdt.
MenuButtons--metaOverheadStatistics-overhead-duration = Overheaddoer:
MenuButtons--metaOverheadStatistics-overhead-percentage = Overheadpersintaazje:
MenuButtons--metaOverheadStatistics-profiled-duration = Profilearre doer:

## Publish panel
## These strings are used in the publishing panel.

MenuButtons--publish--renderCheckbox-label-hidden-threads = Ferburgen threads opnimme
MenuButtons--publish--renderCheckbox-label-include-other-tabs = De gegevens fan oare ljepblêden opnimme
MenuButtons--publish--renderCheckbox-label-hidden-time = Ferburgen tiidrek opnimme
MenuButtons--publish--renderCheckbox-label-include-screenshots = Skermôfdrukken opnimme
MenuButtons--publish--renderCheckbox-label-resource = Helpboarne-URL’s en -paden opnimme
MenuButtons--publish--renderCheckbox-label-extension = Utwreidingsynformaasje opnimme
MenuButtons--publish--renderCheckbox-label-preference = Foarkarswearden opnimme
MenuButtons--publish--button-upload = Oplade
MenuButtons--publish--upload-title = Profyl oplade…
MenuButtons--publish--cancel-upload = Opladen annulearje
MenuButtons--publish--message-try-again = Opnij probearje
MenuButtons--publish--download = Downloade
MenuButtons--publish--compressing = Komprimearje…

## NetworkSettings
## This is used in the network chart.


## Timestamp formatting primitive


## PanelSearch
## The component that is used for all the search input hints in the application.


## Profile Delete Button

# This string is used on the tooltip of the published profile links delete button in uploaded recordings page.
# Variables:
#   $smallProfileName (String) - Shortened name for the published Profile.
ProfileDeleteButton--delete-button =
    .label = Fuortsmite
    .title = Klik hjir om it profyl { $smallProfileName } fuort te smiten

## Profile Delete Panel
## This panel is displayed when the user clicks on the Profile Delete Button,
## it's a confirmation dialog.


## ProfileFilterNavigator
## This is used at the top of the profile analysis UI.


## Profile Loader Animation


## ProfileRootMessage


## ServiceWorkerManager
## This is the component responsible for handling the service worker installation
## and update. It appears at the top of the UI.


## StackSettings
## This is the settings component that is used in Call Tree, Flame Graph and Stack
## Chart panels. It's used to switch between different views of the stack.


## Tab Bar for the bottom half of the analysis UI.


## TrackContextMenu
## This is used as a context menu for timeline to organize the tracks in the
## analysis UI.


## TrackMemoryGraph
## This is used to show the memory graph of that process in the timeline part of
## the UI. To learn more about it, visit:
## https://profiler.firefox.com/docs/#/./memory-allocations?id=memory-track


## TrackSearchField
## The component that is used for the search input in the track context menu.


## TransformNavigator
## Navigator for the applied transforms in the Call Tree, Flame Graph, and Stack
## Chart components.
## These messages are displayed above the table / graph once the user selects to
## apply a specific transformation function to a node in the call tree. It's the
## name of the function, followed by the node's name.
## To learn more about them, visit:
## https://profiler.firefox.com/docs/#/./guide-filtering-call-trees?id=transforms


## Source code view in a box at the bottom of the UI.


## UploadedRecordingsHome
## This is the page that displays all the profiles that user has uploaded.
## See: https://profiler.firefox.com/uploaded-recordings/

