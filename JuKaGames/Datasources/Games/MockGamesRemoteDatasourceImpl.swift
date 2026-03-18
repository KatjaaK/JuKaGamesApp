//
//  MockGamesRemoteDatasourceImpl.swift
//  JuKaGames
//
//  Created by Katja Koerber on 02.02.26.
//

import Foundation

class MockGamesRemoteDatasourceImpl: GamesRemoteDatasource {
    func fetchGames() async throws -> [Game] {
        let str = gameCollectionMockXML
        let xmlData = str.data(using: .utf8)!
        let parser = GameXMLParser()
        let games = parser.parse(data: xmlData)
        print("game: \(games)")
        return games
    }
    
    let gameCollectionMockXML: String = """
    <?xml version="1.0" encoding="utf-8" standalone="yes"?>
    <items totalitems="181" termsofuse="https://boardgamegeek.com/xmlapi/termsofuse" pubdate="Mon, 02 Feb 2026 12:53:29 +0000">
            <item objecttype="thing" objectid="173346" subtype="boardgame" collid="112799772">
        <name sortindex="1">7 Wonders Duel</name>
            <yearpublished>2015</yearpublished>            <image>https://cf.geekdo-images.com/zdagMskTF7wJBPjX74XsRw__original/img/Ju836WNSaW7Mab9Vjq2TJ_FqhWQ=/0x0/filters:format(jpeg)/pic2576399.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/zdagMskTF7wJBPjX74XsRw__small/img/gV1-ckZSIC-dCxxpq1Y7GmPITzQ=/fit-in/200x150/filters:strip_icc()/pic2576399.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-11-10 09:04:36" />
        <numplays>3</numplays>                            </item>
            <item objecttype="thing" objectid="268504" subtype="boardgame" collid="109197506">
        <name sortindex="1">Adventure Tactics: Domianne&#039;s Tower</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/1wBZV8ARCKbs-74jYgBfcQ__original/img/nYOArieQ9s-FnVsKJwoGs7sQ6N0=/0x0/filters:format(png)/pic4832681.png</image>
            <thumbnail>https://cf.geekdo-images.com/1wBZV8ARCKbs-74jYgBfcQ__small/img/T-7xprf7dQMeBnsQxOG_gzLEJZ4=/fit-in/200x150/filters:strip_icc()/pic4832681.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-01-25 09:29:58" />
        <numplays>13</numplays>                            <wishlistcomment>Bestellt</wishlistcomment></item>
            <item objecttype="thing" objectid="191189" subtype="boardgame" collid="101871551">
        <name sortindex="1">Aeon&#039;s End</name>
            <yearpublished>2016</yearpublished>            <image>https://cf.geekdo-images.com/d50LceHj6LIafa4S_qIsCg__original/img/4MsKNGm47PU9BGW4i2yamMlRSQ0=/0x0/filters:format(jpeg)/pic3189350.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/d50LceHj6LIafa4S_qIsCg__small/img/KMFA-gXm_LbZpyXSAHbIZm-eAcQ=/fit-in/200x150/filters:strip_icc()/pic3189350.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:10:37" />
        <numplays>12</numplays>            <comment>- 0 -</comment>                </item>
            <item objecttype="thing" objectid="218417" subtype="boardgame" collid="125509259">
        <name sortindex="1">Aeon&#039;s End: War Eternal</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/H2st1bZH4O0FM46NhKMqyQ__original/img/wR0VHD6Svlp34wxKN6OHV4YZZgM=/0x0/filters:format(jpeg)/pic3430893.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/H2st1bZH4O0FM46NhKMqyQ__small/img/UqZx4Zn9Td--__2bRSdCDsddi_s=/fit-in/200x150/filters:strip_icc()/pic3430893.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:10:59" />
        <numplays>9</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="314088" subtype="boardgame" collid="139425968">
        <name sortindex="1">Agropolis</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/KcE2t-zmo-p-POO8fPTUmA__original/img/C6HMgkML2-KMopI_T4ZfbvvgIJM=/0x0/filters:format(png)/pic5674430.png</image>
            <thumbnail>https://cf.geekdo-images.com/KcE2t-zmo-p-POO8fPTUmA__small/img/Atmy64jQdwgenpROZdR35HLdM5A=/fit-in/200x150/filters:strip_icc()/pic5674430.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:00:38" />
        <numplays>1</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="383064" subtype="boardgame" collid="122529548">
        <name sortindex="1">AI Space Puzzle</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/1rHgBNqf2jWuQn-31Af47A__original/img/WzeyY7regcBa0823_KIlDVlMTHM=/0x0/filters:format(jpeg)/pic8014122.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/1rHgBNqf2jWuQn-31Af47A__small/img/s-OfQH75BhpfZ_pz1jcidZVYc_0=/fit-in/200x150/filters:strip_icc()/pic8014122.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-24 13:43:32" />
        <numplays>5</numplays>                            </item>
            <item objecttype="thing" objectid="357563" subtype="boardgame" collid="114192705">
        <name sortindex="1">Akropolis</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/OTb0hIJHE-U3eD0FmpBrzA__original/img/GpSyHl2wwgLJ6JHJAjPbEQk4MNU=/0x0/filters:format(jpeg)/pic6705097.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/OTb0hIJHE-U3eD0FmpBrzA__small/img/ELFjkv8JJACHRQHQf6b9hzJziaw=/fit-in/200x150/filters:strip_icc()/pic6705097.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:11:12" />
        <numplays>8</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="295948" subtype="boardgame" collid="119922290">
        <name sortindex="1">Aqualin</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/hLvKSbnL0xbwbjZ9oYr0WA__original/img/C0nI0BQouanPpU7tRFFtt6VbJ38=/0x0/filters:format(jpeg)/pic8488316.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/hLvKSbnL0xbwbjZ9oYr0WA__small/img/lBdD1iQAO-6wRj3Cntb5JdNPLss=/fit-in/200x150/filters:strip_icc()/pic8488316.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:24:36" />
        <numplays>3</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="371077" subtype="boardgame" collid="114088495">
        <name sortindex="1">Arborea</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/KHT8Ex0wvRs5wAWPNo3xNg__original/img/iMUGBOw1H51W0thj6tgXMrnPf6Q=/0x0/filters:format(png)/pic7230067.png</image>
            <thumbnail>https://cf.geekdo-images.com/KHT8Ex0wvRs5wAWPNo3xNg__small/img/3RNpeYrdE_ns9Q9MEJgjks73ESg=/fit-in/200x150/filters:strip_icc()/pic7230067.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:11:42" />
        <numplays>9</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="298627" subtype="boardgame" collid="121138508">
        <name sortindex="1">Arena: The Contest – Tanares Adventures</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/HCRljFXHXKsQ0uMjk9lUiw__original/img/se5V3ZNLN5iW5QolsLDHvMfOYuQ=/0x0/filters:format(jpeg)/pic7812754.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/HCRljFXHXKsQ0uMjk9lUiw__small/img/aQCOlaMqxOe6Kj2PgtLVtqLcW_o=/fit-in/200x150/filters:strip_icc()/pic7812754.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-07-14 13:33:02" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="342942" subtype="boardgame" collid="113036804">
        <name sortindex="1">Ark Nova</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/SoU8p28Sk1s8MSvoM4N8pQ__original/img/g4S18szTdrXCdIwVKzMKrZrYAcM=/0x0/filters:format(jpeg)/pic6293412.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/SoU8p28Sk1s8MSvoM4N8pQ__small/img/4KuHNTWSMPf8vTNDKSRMMI3oOv8=/fit-in/200x150/filters:strip_icc()/pic6293412.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:12:00" />
        <numplays>19</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="219650" subtype="boardgame" collid="109004089">
        <name sortindex="1">Arydia: The Paths We Dare Tread</name>
            <yearpublished>2025</yearpublished>            <image>https://cf.geekdo-images.com/GGXq2lRAJCtS1yPPPmdVKw__original/img/EN7iqByTarLfTC4XmZ_A0CQB_1E=/0x0/filters:format(png)/pic6205610.png</image>
            <thumbnail>https://cf.geekdo-images.com/GGXq2lRAJCtS1yPPPmdVKw__small/img/-ERrbcuFZtzZSLfl8grcDi_pCgY=/fit-in/200x150/filters:strip_icc()/pic6205610.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:00:24" />
        <numplays>36</numplays>            <comment>-6-</comment>                <wishlistcomment>pledged</wishlistcomment></item>
            <item objecttype="thing" objectid="260789" subtype="boardgame" collid="106765547">
        <name sortindex="1">Assassin&#039;s Creed: Brotherhood of Venice</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/huJQdINp8chuQbXdVD0chw__original/img/bwvtK6ygLi-hJSRW-4JnkDw9pSE=/0x0/filters:format(png)/pic6753357.png</image>
            <thumbnail>https://cf.geekdo-images.com/huJQdINp8chuQbXdVD0chw__small/img/TEGmikkD7omDL61pyQCCGijTq-A=/fit-in/200x150/filters:strip_icc()/pic6753357.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-03 16:01:47" />
        <numplays>3</numplays>            <comment>kampagne durchgespielt</comment>                </item>
            <item objecttype="thing" objectid="248490" subtype="boardgame" collid="112490966">
        <name sortindex="1">Atlantis Rising (Second Edition)</name>
            <yearpublished>2019</yearpublished>            <image>https://cf.geekdo-images.com/WRHngbJkWiKAJ4U8xSySIQ__original/img/TXo07OaiWGK59Zu0IBXbnBpbmag=/0x0/filters:format(jpeg)/pic4895878.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/WRHngbJkWiKAJ4U8xSySIQ__small/img/kZ9kSXPe8naMaTtc9IV4SFOBCcw=/fit-in/200x150/filters:strip_icc()/pic4895878.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:00:13" />
        <numplays>2</numplays>            <comment>-2-</comment>                <wishlistcomment>Coop</wishlistcomment></item>
            <item objecttype="thing" objectid="230802" subtype="boardgame" collid="109196962">
        <name sortindex="1">Azul</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/aPSHJO0d0XOpQR5X-wJonw__original/img/AkbtYVc6xXJF3c9EUrakklcclKw=/0x0/filters:format(png)/pic6973671.png</image>
            <thumbnail>https://cf.geekdo-images.com/aPSHJO0d0XOpQR5X-wJonw__small/img/ccsXKrdGJw-YSClWwzVUwk5Nh9Y=/fit-in/200x150/filters:strip_icc()/pic6973671.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:12:47" />
        <numplays>6</numplays>            <comment>-0-</comment>                <wishlistcomment>evtl eher die mini version für unterwegs?</wishlistcomment></item>
            <item objecttype="thing" objectid="362976" subtype="boardgame" collid="120868537">
        <name sortindex="1">Beacon Patrol</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/9hDNHVLmorkaytg2ztLM6w__original/img/k5cnBMKBb94XWGhL0aEyYOlaWtQ=/0x0/filters:format(jpeg)/pic7439416.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/9hDNHVLmorkaytg2ztLM6w__small/img/2dUdMpeeHEbAFEM9rOJOmkf_kjs=/fit-in/200x150/filters:strip_icc()/pic7439416.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:00:06" />
        <numplays>5</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="211534" subtype="boardgame" collid="112520976">
        <name sortindex="1">Bears vs Babies</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/2BZROogBECvPPF2780wlvg__original/img/LAUIOIEPo54Qis-r8FDiE6kqqh4=/0x0/filters:format(jpeg)/pic5521191.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/2BZROogBECvPPF2780wlvg__small/img/sdoR62wTU6mKAKrZY96_zhPWy3c=/fit-in/200x150/filters:strip_icc()/pic5521191.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:12:57" />
        <numplays>4</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="180593" subtype="boardgame" collid="118306145">
        <name sortindex="5">The Bloody Inn</name>
            <yearpublished>2015</yearpublished>            <image>https://cf.geekdo-images.com/GTUmt2ViVzJOT4ZKXbq2Zg__original/img/8dJoI4olAHxnPu7n4PiXTmyGJ20=/0x0/filters:format(jpeg)/pic2618699.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/GTUmt2ViVzJOT4ZKXbq2Zg__small/img/h-GMHsoeG4S6wRVjzlMGmP0UmQE=/fit-in/200x150/filters:strip_icc()/pic2618699.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 00:59:56" />
        <numplays>1</numplays>            <comment>-0-</comment>                <wishlistcomment>Bga</wishlistcomment></item>
            <item objecttype="thing" objectid="11" subtype="boardgame" collid="113985689">
        <name sortindex="1">Bohnanza</name>
            <yearpublished>1997</yearpublished>            <image>https://cf.geekdo-images.com/8SADtu_4zBH_UJrCo935Iw__original/img/RNuAr2CDbxE3XzeJVkxj4Df3eVM=/0x0/filters:format(jpeg)/pic6348964.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/8SADtu_4zBH_UJrCo935Iw__small/img/vwTEQOWA3Mw__ztkTMulOgJ82Pw=/fit-in/200x150/filters:strip_icc()/pic6348964.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:13:08" />
        <numplays>0</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="413246" subtype="boardgame" collid="123515624">
        <name sortindex="1">Bomb Busters</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/HpGXIlt5i6T-0jbiQRReOg__original/img/2uApg8IOYjNVSzbUIwJUa-Z8eL8=/0x0/filters:format(png)/pic8303080.png</image>
            <thumbnail>https://cf.geekdo-images.com/HpGXIlt5i6T-0jbiQRReOg__small/img/8wfQelnNsbXCykJWMjD8UAjhleU=/fit-in/200x150/filters:strip_icc()/pic8303080.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 00:59:46" />
        <numplays>53</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="271529" subtype="boardgame" collid="117929724">
        <name sortindex="1">Botanik</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/BZiB4muySH2j0H2t6CEjcA__original/img/YIe8q2IDu1gRbFSRF9PV52j6tnA=/0x0/filters:format(jpeg)/pic5869674.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/BZiB4muySH2j0H2t6CEjcA__small/img/LyMx8-HYvEzkSdHWwvn4fjgwnqM=/fit-in/200x150/filters:strip_icc()/pic5869674.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:13:23" />
        <numplays>10</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="246761" subtype="boardgame" collid="117930188">
        <name sortindex="1">Cahoots</name>
            <yearpublished>2018</yearpublished>            <image>https://cf.geekdo-images.com/HbDx3mCSSnO6XIRhwV3uLg__original/img/2R-FEy1aoczi1skm6wVWc0YFyD0=/0x0/filters:format(jpeg)/pic3989425.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/HbDx3mCSSnO6XIRhwV3uLg__small/img/ychKq_7420t0peZAtT5JggPHyuk=/fit-in/200x150/filters:strip_icc()/pic3989425.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:13:31" />
        <numplays>107</numplays>            <comment>-0-</comment>                <wishlistcomment>tippi toppi</wishlistcomment></item>
            <item objecttype="thing" objectid="367047" subtype="boardgame" collid="119994135">
        <name sortindex="1">Caldera Park</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/s-oBBwjs66cIo1IvwHU1Lw__original/img/-fDCIqqpQuQvgEbSq7x8eFziIMo=/0x0/filters:format(jpeg)/pic6972919.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/s-oBBwjs66cIo1IvwHU1Lw__small/img/exR8YS7zbP1JK9zmZaKmB8sPq54=/fit-in/200x150/filters:strip_icc()/pic6972919.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 00:59:36" />
        <numplays>1</numplays>            <comment>-0-</comment>                <wishlistcomment>Bestellt</wishlistcomment></item>
            <item objecttype="thing" objectid="283155" subtype="boardgame" collid="112534090">
        <name sortindex="1">Calico</name>
            <yearpublished>2020</yearpublished>            <image>https://cf.geekdo-images.com/qGkU6XsF1448F_A4P8TY5Q__original/img/sm-qIkkIoKuYRUgkfP6kkXTm1QY=/0x0/filters:format(jpeg)/pic8124431.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/qGkU6XsF1448F_A4P8TY5Q__small/img/l5ODCWYHD8_1x-WFqf-TJZhXT38=/fit-in/200x150/filters:strip_icc()/pic8124431.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:13:58" />
        <numplays>10</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="822" subtype="boardgame" collid="110648716">
        <name sortindex="1">Carcassonne</name>
            <yearpublished>2000</yearpublished>            <image>https://cf.geekdo-images.com/peUgu3A20LRmAXAMyDQfpQ__original/img/bP18m_PYjyFOv1IBGgMOteQUneA=/0x0/filters:format(jpeg)/pic8621446.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/peUgu3A20LRmAXAMyDQfpQ__small/img/oEEslN-EGqh82sNI6Aj4_MFXYg0=/fit-in/200x150/filters:strip_icc()/pic8621446.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-09-28 01:22:41" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="295947" subtype="boardgame" collid="112166486">
        <name sortindex="1">Cascadia</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/MjeJZfulbsM1DSV3DrGJYA__original/img/B374C04Eip7fmQBGJzgiOTp-jyQ=/0x0/filters:format(jpeg)/pic5100691.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/MjeJZfulbsM1DSV3DrGJYA__small/img/tVSFjSxYEcw7sKj3unIIQV8kxoc=/fit-in/200x150/filters:strip_icc()/pic5100691.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:14:10" />
        <numplays>23</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="385318" subtype="boardgame" collid="117971238">
        <name sortindex="1">Cascadia: Landmarks</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/sD3EGm2CyvQGrp7FhScs0w__original/img/MS_E_-lJJ8SDopcqra9yq4JopbA=/0x0/filters:format(jpeg)/pic7453773.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/sD3EGm2CyvQGrp7FhScs0w__small/img/wPg8YV5oURy3SQ18vYrpBf-R3_s=/fit-in/200x150/filters:strip_icc()/pic7453773.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:14:19" />
        <numplays>0</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="416851" subtype="boardgame" collid="141040603">
        <name sortindex="1">Castle Combo</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/rGomBfj0FGrZM-w3h5HFWQ__original/img/XtVFdYXLAxdGOjQOGCkrms-hLUU=/0x0/filters:format(png)/pic8250341.png</image>
            <thumbnail>https://cf.geekdo-images.com/rGomBfj0FGrZM-w3h5HFWQ__small/img/DnptKBxT6l_W2B3jGXdnEDEkDM0=/fit-in/200x150/filters:strip_icc()/pic8250341.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:01:00" />
        <numplays>13</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="271320" subtype="boardgame" collid="112534178">
        <name sortindex="5">The Castles of Burgundy</name>
            <yearpublished>2019</yearpublished>            <image>https://cf.geekdo-images.com/VrNrk7XVU1hN0j1ZFhjcjw__original/img/IYxnn0KV56lDy18_0e23DSLcMso=/0x0/filters:format(jpeg)/pic4934938.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/VrNrk7XVU1hN0j1ZFhjcjw__small/img/6XPO0XNGGw3V77NjWR0K7Y33fqc=/fit-in/200x150/filters:strip_icc()/pic4934938.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-03-09 02:13:39" />
        <numplays>6</numplays>                            </item>
            <item objecttype="thing" objectid="400602" subtype="boardgame" collid="116077875">
        <name sortindex="1">Civolution</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/DahMIPzUpexvhUPAG3dGbA__original/img/P01WNfQ0kOF9n7FFNXpGCo-tueE=/0x0/filters:format(jpeg)/pic8303209.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/DahMIPzUpexvhUPAG3dGbA__small/img/uzogBNlLw3GBuGa1T6_8oQbADnY=/fit-in/200x150/filters:strip_icc()/pic8303209.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:24:12" />
        <numplays>5</numplays>            <comment>-29-</comment>                </item>
            <item objecttype="thing" objectid="224037" subtype="boardgame" collid="99599460">
        <name sortindex="1">Codenames: Duet</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/VG31TvBpKngZ8ztV-N4Dcg__original/img/w-FZ84fzPZSNCI1HtrsTOfLT2B4=/0x0/filters:format(png)/pic8911183.png</image>
            <thumbnail>https://cf.geekdo-images.com/VG31TvBpKngZ8ztV-N4Dcg__small/img/FW3sD3Ci-5t07QceD_q1r6Wnrzw=/fit-in/200x150/filters:strip_icc()/pic8911183.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:14:38" />
        <numplays>9</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="361025" subtype="boardgame" collid="119459919">
        <name sortindex="1">Come Together</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/pSJ5JXSldWkNKuwati1xnQ__original/img/CowN9TlGhzX0n0Uil3QIEcpkFQk=/0x0/filters:format(jpeg)/pic6893002.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/pSJ5JXSldWkNKuwati1xnQ__small/img/U2BZeQiFirMx3JZC5lrq-mIUBno=/fit-in/200x150/filters:strip_icc()/pic6893002.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-12-05 12:08:41" />
        <numplays>2</numplays>                            </item>
            <item objecttype="thing" objectid="396895" subtype="boardgame" collid="141729064">
        <name sortindex="1">Corps of Discovery: A Game Set in the World of Manifest Destiny</name>
            <yearpublished>2025</yearpublished>            <image>https://cf.geekdo-images.com/GbluwCXXLn2Y3MtRykBdbg__original/img/VKJ-sdVPegg-jhYiBlgVwBOVHug=/0x0/filters:format(jpeg)/pic7884208.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/GbluwCXXLn2Y3MtRykBdbg__small/img/Y6xFkP7g2AFTkJyrE9F2_EPYGtI=/fit-in/200x150/filters:strip_icc()/pic7884208.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-24 15:33:50" />
        <numplays>5</numplays>                            </item>
            <item objecttype="thing" objectid="362020" subtype="boardgame" collid="109162643">
        <name sortindex="1">Cosmoctopus</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/Z3qXypltJpHxWwz7-qXg6A__original/img/7JgCu4u6irJXF_5BxPNAALnX7Wo=/0x0/filters:format(jpeg)/pic7467120.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/Z3qXypltJpHxWwz7-qXg6A__small/img/fFXFAGxCRjabVeZRGQ8uQWxxASk=/fit-in/200x150/filters:strip_icc()/pic7467120.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:14:49" />
        <numplays>9</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="284083" subtype="boardgame" collid="114487315">
        <name sortindex="5">The Crew: The Quest for Planet Nine</name>
            <yearpublished>2019</yearpublished>            <image>https://cf.geekdo-images.com/98LnQShydr11OBKS46xY-Q__original/img/Q-ZkgnuBu9OTBr7J3qnqPjqamAE=/0x0/filters:format(jpeg)/pic5687013.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/98LnQShydr11OBKS46xY-Q__small/img/et-fnuozyOdBOVL-5kSS3_7I8fw=/fit-in/200x150/filters:strip_icc()/pic5687013.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:24:04" />
        <numplays>59</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="253344" subtype="boardgame" collid="99599440">
        <name sortindex="1">Cthulhu: Death May Die</name>
            <yearpublished>2019</yearpublished>            <image>https://cf.geekdo-images.com/e8D09pfFsUsoX1D81EeoZg__original/img/8_FKwPd8bBL3PFjef8Yjz_sFWSk=/0x0/filters:format(jpeg)/pic4705171.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/e8D09pfFsUsoX1D81EeoZg__small/img/j03wBmZg1Kp5QaaIu9p-O8XRqeU=/fit-in/200x150/filters:strip_icc()/pic4705171.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-11-26 12:44:58" />
        <numplays>18</numplays>                            </item>
            <item objecttype="thing" objectid="256972" subtype="boardgame" collid="140235646">
        <name sortindex="1">Cthulhu: Death May Die – Season 2 Expansion</name>
            <yearpublished>2019</yearpublished>            <image>https://cf.geekdo-images.com/f4q5Rw0F5RrHCAev_Mw-4A__original/img/-XI3Acq2f4PrWaUjOShaLR9tx08=/0x0/filters:format(jpeg)/pic4705170.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/f4q5Rw0F5RrHCAev_Mw-4A__small/img/J6gFnWlhov6lds5uLfrljyjrewE=/fit-in/200x150/filters:strip_icc()/pic4705170.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-12-26 14:48:44" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="368340" subtype="boardgame" collid="116078657">
        <name sortindex="1">Dark Tomb: The Crypts of Aurelian</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/_W9AynWxsiGmh4nTX6Pe8g__original/img/1cvLQVqvqaQHlDBi7qQG1rRshBE=/0x0/filters:format(jpeg)/pic9072933.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/_W9AynWxsiGmh4nTX6Pe8g__small/img/phGd3U6fXYejZNjWeyPEKrEIYz0=/fit-in/200x150/filters:strip_icc()/pic9072933.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-02-08 16:20:22" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="322289" subtype="boardgame" collid="113435376">
        <name sortindex="1">Darwin&#039;s Journey</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/-A_ABjMw4PdoAZrH-FjiiA__original/img/GuDlOog3eTRrkxCUzCEgRc17B-g=/0x0/filters:format(png)/pic5726930.png</image>
            <thumbnail>https://cf.geekdo-images.com/-A_ABjMw4PdoAZrH-FjiiA__small/img/_rJRtHzqatLg9OQM0x1UaC1cRGY=/fit-in/200x150/filters:strip_icc()/pic5726930.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-07-20 15:19:35" />
        <numplays>2</numplays>                            </item>
            <item objecttype="thing" objectid="380135" subtype="boardgame" collid="110508985">
        <name sortindex="1">Dead Cells: The Rogue-Lite Board Game</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/N_5Dz0GeI5dGBzSrBMEqrg__original/img/ppMMkd1w8h-m7OfsRRL3VXQ9lKI=/0x0/filters:format(jpeg)/pic7336034.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/N_5Dz0GeI5dGBzSrBMEqrg__small/img/EJO1Ct-5NWBGHk29ilMv1fwpncQ=/fit-in/200x150/filters:strip_icc()/pic7336034.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:25:08" />
        <numplays>23</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="443306" subtype="boardgame" collid="138259525">
        <name sortindex="1">Deckers</name>
            <yearpublished>2025</yearpublished>            <image>https://cf.geekdo-images.com/QIiMCGc9zpv_XKAI-zbqmQ__original/img/2riPUBkY_TmfAnyLQUHeENJEEyI=/0x0/filters:format(jpeg)/pic8907989.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/QIiMCGc9zpv_XKAI-zbqmQ__small/img/WaxhjFWQeablIaDyzDTe9XWpOlw=/fit-in/200x150/filters:strip_icc()/pic8907989.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-11-05 15:14:37" />
        <numplays>2</numplays>                            </item>
            <item objecttype="thing" objectid="344554" subtype="boardgame" collid="118890929">
        <name sortindex="1">Décorum</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/R7bXwsuwemPYXs7q6EkXhw__original/img/jBwrFnSbr05NpsnfcCxpP2G6sq8=/0x0/filters:format(jpeg)/pic6393337.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/R7bXwsuwemPYXs7q6EkXhw__small/img/NdvS0GLPfDQx98wLDu8uwUwiG1U=/fit-in/200x150/filters:strip_icc()/pic6393337.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:16:11" />
        <numplays>13</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="104162" subtype="boardgame" collid="101871584">
        <name sortindex="1">Descent: Journeys in the Dark (Second Edition)</name>
            <yearpublished>2012</yearpublished>            <image>https://cf.geekdo-images.com/ZN2rpiJ19lg5DZk_iYMMkQ__original/img/E7OjZXGfe2Vfj2qis30aXetbQJQ=/0x0/filters:format(jpeg)/pic1180640.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/ZN2rpiJ19lg5DZk_iYMMkQ__small/img/C6XETjkjDq3zebWc7-Rf_WKh2ak=/fit-in/200x150/filters:strip_icc()/pic1180640.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-01-05 15:37:51" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="322708" subtype="boardgame" collid="101871326">
        <name sortindex="1">Descent: Legends of the Dark</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/Q96PxRVbrDxS9_4ZPTJtHQ__original/img/kGU8ligha3fyP0LuVTwmLMK9yEQ=/0x0/filters:format(png)/pic5941333.png</image>
            <thumbnail>https://cf.geekdo-images.com/Q96PxRVbrDxS9_4ZPTJtHQ__small/img/hXnjkvD7KiLk2fon8tbvsXNtT_k=/fit-in/200x150/filters:strip_icc()/pic5941333.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-21 03:10:01" />
        <numplays>0</numplays>            <comment>kampagne durchgespielt(2x)</comment>                </item>
            <item objecttype="thing" objectid="382927" subtype="boardgame" collid="110648685">
        <name sortindex="1">Descent: Legends of the Dark – The Betrayer&#039;s War</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/HmW4xXkWhucyi0iuLvfG8Q__original/img/nb5lkNVuPwVVPjFlL5fTyk5CeRg=/0x0/filters:format(png)/pic7416676.png</image>
            <thumbnail>https://cf.geekdo-images.com/HmW4xXkWhucyi0iuLvfG8Q__small/img/5Zr0ffkbSstavInS7xC9t8KTjw4=/fit-in/200x150/filters:strip_icc()/pic7416676.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-03 16:03:08" />
        <numplays>0</numplays>            <comment>kampagne durchgespielt</comment>                </item>
            <item objecttype="thing" objectid="223321" subtype="boardgame" collid="99599468">
        <name sortindex="1">Detective: A Modern Crime Board Game</name>
            <yearpublished>2018</yearpublished>            <image>https://cf.geekdo-images.com/wJphcoCCYScWCNkE32D_hw__original/img/qSYnPWdXgggfxYvT03Oa32zSrh0=/0x0/filters:format(jpeg)/pic5756205.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/wJphcoCCYScWCNkE32D_hw__small/img/9FV7H95C0vPv_y60nitZVlMTTgc=/fit-in/200x150/filters:strip_icc()/pic5756205.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-01-03 05:27:28" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="360206" subtype="boardgame" collid="134618700">
        <name sortindex="1">Discordia</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/VkCBFlvAAHvaUk84H9usDg__original/img/-JE6a6OIHZeU8doazKlzudEI3uk=/0x0/filters:format(jpeg)/pic6797734.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/VkCBFlvAAHvaUk84H9usDg__small/img/9Q9MA7yu6uHVmKiiBZo_qlGy8Ac=/fit-in/200x150/filters:strip_icc()/pic6797734.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:25:27" />
        <numplays>9</numplays>            <comment>-3-</comment>                </item>
            <item objecttype="thing" objectid="424774" subtype="boardgame" collid="124830601">
        <name sortindex="1">Dorfromantik: Sakura</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/fznRvIx6a-rU56Ly0RqpTA__original/img/paFybadRTxcWLuQr2xkSMzAULQA=/0x0/filters:format(jpeg)/pic8305438.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/fznRvIx6a-rU56Ly0RqpTA__small/img/VkEezaIwaCX_6MZj2vcrcSb9nQk=/fit-in/200x150/filters:strip_icc()/pic8305438.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-30 17:36:19" />
        <numplays>13</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="370591" subtype="boardgame" collid="110836585">
        <name sortindex="1">Dorfromantik: The Board Game</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/Nqw3SzV4JDd64lcDgytPEg__original/img/CK6xh0d01jIC7WOIGALHZCDli34=/0x0/filters:format(jpeg)/pic7227691.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/Nqw3SzV4JDd64lcDgytPEg__small/img/SYowoPc4NsBcU6duKGUM93itzZY=/fit-in/200x150/filters:strip_icc()/pic7227691.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:25:36" />
        <numplays>29</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="357028" subtype="boardgame" collid="105196837">
        <name sortindex="1">Dungeon Fighter: Second Edition</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/ZuseUrDocxDQC-nXa6mKSA__original/img/YnCeOe432RbLe5_aqXvKC2Gal60=/0x0/filters:format(jpeg)/pic6685018.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/ZuseUrDocxDQC-nXa6mKSA__small/img/26YmQhpbrDgCehmPsy_D_awkBnI=/fit-in/200x150/filters:strip_icc()/pic6685018.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-12-31 19:28:06" />
        <numplays>3</numplays>                            <wishlistcomment>geschicklichkeitsspiel</wishlistcomment></item>
            <item objecttype="thing" objectid="350184" subtype="boardgame" collid="113434116">
        <name sortindex="1">Earth</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/0xqF_KyOb7V26Lu5YT3fxw__original/img/uqxMcj1QPt-U34drYdL6mmv2eos=/0x0/filters:format(jpeg)/pic6699821.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/0xqF_KyOb7V26Lu5YT3fxw__small/img/ABTwzzMGekkz2jVl01LC4789TcQ=/fit-in/200x150/filters:strip_icc()/pic6699821.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:16:40" />
        <numplays>9</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="351526" subtype="boardgame" collid="118892237">
        <name sortindex="1">Encyclopedia</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/sL-5ZjHTK3EUJDiv0tlilg__original/img/JpAC2fDUHZcQpW33xmK5orLjWcc=/0x0/filters:format(png)/pic6515523.png</image>
            <thumbnail>https://cf.geekdo-images.com/sL-5ZjHTK3EUJDiv0tlilg__small/img/fVuKUiBB4TdNM7_q8KGFasCIuDc=/fit-in/200x150/filters:strip_icc()/pic6515523.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-07-06 05:51:20" />
        <numplays>4</numplays>                            </item>
            <item objecttype="thing" objectid="305096" subtype="boardgame" collid="114311421">
        <name sortindex="1">Endless Winter: Paleoamericans</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/TFX_awTwbJxoG74GtRHytw__original/img/plU9ZhUubz-1LHGfbsDstEOE9vg=/0x0/filters:format(jpeg)/pic5624523.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/TFX_awTwbJxoG74GtRHytw__small/img/gUl5oqRjGtrEIBlTDCDnfm_m1Wg=/fit-in/200x150/filters:strip_icc()/pic5624523.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:25:55" />
        <numplays>4</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="396989" subtype="boardgame" collid="117790950">
        <name sortindex="1">Evenfall</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/hEbikkJceop4K5OIVPOmSQ__original/img/oDLN2BjWHv7yPL309ZFHJ-oYXcs=/0x0/filters:format(jpeg)/pic7657810.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/hEbikkJceop4K5OIVPOmSQ__small/img/dwb_evoSkkc6WBGYzaLYsaGLarU=/fit-in/200x150/filters:strip_icc()/pic7657810.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-17 08:37:06" />
        <numplays>2</numplays>                            </item>
            <item objecttype="thing" objectid="320540" subtype="boardgame" collid="125433693">
        <name sortindex="1">EXIT Adventskalender: Das geheimnisvolle Schloss</name>
            <yearpublished>2019</yearpublished>            <image>https://cf.geekdo-images.com/bWuxypgV3DC_dJFk3f2sFg__original/img/Azkv0elTy6FbEWrVrHqFIrjqlcM=/0x0/filters:format(jpeg)/pic6057326.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/bWuxypgV3DC_dJFk3f2sFg__small/img/YkVpoE9La22YGS_a16hcqTUP3qw=/fit-in/200x150/filters:strip_icc()/pic6057326.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:33:04" />
        <numplays>24</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="379078" subtype="boardgame" collid="114088137">
        <name sortindex="1">Expeditions</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/9eBww9iAi472T2goijVqwQ__original/img/uvxTECY9yY2ONOllPgv7xLZCrGU=/0x0/filters:format(jpeg)/pic7320023.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/9eBww9iAi472T2goijVqwQ__small/img/xR6PqvTMNBFaGlnN9WDAeIooBNM=/fit-in/200x150/filters:strip_icc()/pic7320023.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:17:55" />
        <numplays>12</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="172225" subtype="boardgame" collid="110648741">
        <name sortindex="1">Exploding Kittens</name>
            <yearpublished>2015</yearpublished>            <image>https://cf.geekdo-images.com/N8bL53-pRU7zaXDTrEaYrw__original/img/0ciN1VZYifUd0qIDO0e8cGXmiss=/0x0/filters:format(png)/pic2691976.png</image>
            <thumbnail>https://cf.geekdo-images.com/N8bL53-pRU7zaXDTrEaYrw__small/img/3tH4pIc1Udzkd0tXc6MgVQ59BC0=/fit-in/200x150/filters:strip_icc()/pic2691976.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-04-13 16:26:49" />
        <numplays>2</numplays>                            </item>
            <item objecttype="thing" objectid="371932" subtype="boardgame" collid="120149026">
        <name sortindex="1">Explorers of Navoria</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/ytFv6aVdLQ4rNWxTlZhHlQ__original/img/M8rm24-ZpNTfkzSwpY2svdm-nAA=/0x0/filters:format(png)/pic7598950.png</image>
            <thumbnail>https://cf.geekdo-images.com/ytFv6aVdLQ4rNWxTlZhHlQ__small/img/YotVsBbAnXKCyAYZ75Li81GWGRI=/fit-in/200x150/filters:strip_icc()/pic7598950.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:18:12" />
        <numplays>7</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="411026" subtype="boardgame" collid="135667603">
        <name sortindex="1">Explorers of Navoria: Forgotten Lands</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/OgopsX_z4SgATqdUGYoMVQ__original/img/bba0Yz4xWhe4Mgft58g-_qQi8bU=/0x0/filters:format(jpeg)/pic7955033.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/OgopsX_z4SgATqdUGYoMVQ__small/img/kyKXUIGr151gMuUiHkb0FjuZ3O4=/fit-in/200x150/filters:strip_icc()/pic7955033.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:18:33" />
        <numplays>0</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="223040" subtype="boardgame" collid="112012519">
        <name sortindex="1">Fantasy Realms</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/A7IOpPt-lHrMYsbRmxXWdQ__original/img/kaYIVoFZkbWe0z80bvcqJdFCNlo=/0x0/filters:format(jpeg)/pic6177962.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/A7IOpPt-lHrMYsbRmxXWdQ__small/img/XoD3fXgApfY7-dfYyFeE6FVkbfY=/fit-in/200x150/filters:strip_icc()/pic6177962.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:18:42" />
        <numplays>29</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="385761" subtype="boardgame" collid="113989583">
        <name sortindex="1">Faraway</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/u1cwi9BWSKsPxSkVO0BzbA__original/img/jTY6_PRF6FrUgInfMajzobVy0S8=/0x0/filters:format(png)/pic7570101.png</image>
            <thumbnail>https://cf.geekdo-images.com/u1cwi9BWSKsPxSkVO0BzbA__small/img/5G45GN8CE7pq38fJMMocmPtV4_U=/fit-in/200x150/filters:strip_icc()/pic7570101.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:18:50" />
        <numplays>14</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="363625" subtype="boardgame" collid="121138455">
        <name sortindex="1">Fateforge: Chronicles of Kaan</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/aUdB9fVCJqfIe0RKpVsrQQ__original/img/Ft_aY8C7davpqO2sGFAj_Joj7OA=/0x0/filters:format(jpeg)/pic6961706.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/aUdB9fVCJqfIe0RKpVsrQQ__small/img/fC9haptoKBk9xDsUtE0JrXCZxWs=/fit-in/200x150/filters:strip_icc()/pic6961706.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-01-25 09:32:03" />
        <numplays>26</numplays>                            </item>
            <item objecttype="thing" objectid="370478" subtype="boardgame" collid="127441502">
        <name sortindex="1">Fateforge: Chronicles of Kaan – Clash of the Immortals</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/4lCqBhKec-D6HyGiINmYzQ__original/img/1xXaUHvvANuMRhbEX8vksd2Wq54=/0x0/filters:format(jpeg)/pic7063213.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/4lCqBhKec-D6HyGiINmYzQ__small/img/YKZOBrZ8t2F5BOZdp84dcQtgScI=/fit-in/200x150/filters:strip_icc()/pic7063213.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-01-02 08:38:19" />
        <numplays>12</numplays>                            </item>
            <item objecttype="thing" objectid="436126" subtype="boardgame" collid="136402356">
        <name sortindex="1">Finspan</name>
            <yearpublished>2025</yearpublished>            <image>https://cf.geekdo-images.com/BBefMnVYBDS3EbJ9fPaC8A__original/img/E2VsUBa6HUU0QKlp4eQOsbP1wUo=/0x0/filters:format(jpeg)/pic8634453.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/BBefMnVYBDS3EbJ9fPaC8A__small/img/Wo2snzBQJMaVXkFdYl-zXL8PrbA=/fit-in/200x150/filters:strip_icc()/pic8634453.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:26:10" />
        <numplays>8</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="409693" subtype="boardgame" collid="123124415">
        <name sortindex="1">Flatiron</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/E0bUTmRdbTwznjxvFHMxQQ__original/img/k1CfR-yZemxKHcipYDBG2iF3rMA=/0x0/filters:format(jpeg)/pic7926037.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/E0bUTmRdbTwznjxvFHMxQQ__small/img/BIXJBbVR-Zz8NtgSBVort8F8Upg=/fit-in/200x150/filters:strip_icc()/pic7926037.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-05-09 08:00:17" />
        <numplays>2</numplays>                            </item>
            <item objecttype="thing" objectid="391163" subtype="boardgame" collid="113976817">
        <name sortindex="1">Forest Shuffle</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/08bC8NviSTNc4Zvur4pueA__original/img/GcBtTHjdPXagHE-IOCpQ0he6rN4=/0x0/filters:format(jpeg)/pic7578350.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/08bC8NviSTNc4Zvur4pueA__small/img/Xq8TNBmMl3Z7DoynvbUXchFAztc=/fit-in/200x150/filters:strip_icc()/pic7578350.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:19:12" />
        <numplays>13</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="412576" subtype="boardgame" collid="115798112">
        <name sortindex="1">Forest Shuffle: Alpine</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/DHrlMA2XJr5T5IsO_X0Z3w__original/img/C0GOJ_wWW8s1wbMn6VTl74LRe18=/0x0/filters:format(jpeg)/pic7998961.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/DHrlMA2XJr5T5IsO_X0Z3w__small/img/IlSD7ds4GhNqbljlvotFU3mJtDY=/fit-in/200x150/filters:strip_icc()/pic7998961.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:19:19" />
        <numplays>0</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="353152" subtype="boardgame" collid="119780551">
        <name sortindex="1">Framework</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/ZpCVs_p1wlbiSFOg1nNVoA__original/img/DWBfCFZIP4TiC0Ae3txC1ADeDOs=/0x0/filters:format(jpeg)/pic6573332.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/ZpCVs_p1wlbiSFOg1nNVoA__small/img/JXhS3iYjCXZGQMMfXy_gylbPRCU=/fit-in/200x150/filters:strip_icc()/pic6573332.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-30 17:37:00" />
        <numplays>108</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="295770" subtype="boardgame" collid="99600042">
        <name sortindex="1">Frosthaven</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/cwUgf-f-qwri8UHBUnifuQ__original/img/Tk7wFDJuaU8RPjNkmyC3AWYOPpU=/0x0/filters:format(png)/pic5092291.png</image>
            <thumbnail>https://cf.geekdo-images.com/cwUgf-f-qwri8UHBUnifuQ__small/img/3o2Hc_N5mmfpOt8s9kP0ap8Jti8=/fit-in/200x150/filters:strip_icc()/pic5092291.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-30 17:37:23" />
        <numplays>31</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="220308" subtype="boardgame" collid="124325527">
        <name sortindex="1">Gaia Project</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/hGWFm3hbMlCDsfCsauOQ4g__original/img/tjlflQtUPFiTpLpwk1NCVCS29Ic=/0x0/filters:format(png)/pic5375625.png</image>
            <thumbnail>https://cf.geekdo-images.com/hGWFm3hbMlCDsfCsauOQ4g__small/img/NNG7Ijyx4evp5gcVReis9i0koas=/fit-in/200x150/filters:strip_icc()/pic5375625.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:26:33" />
        <numplays>0</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="353322" subtype="boardgame" collid="112520942">
        <name sortindex="1">Gathering Gloom</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/ZucbBMJ-ps0_tE4XUJJ4tg__original/img/nvYotYe9geqXg6ogg_hssRKtutM=/0x0/filters:format(jpeg)/pic7064789.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/ZucbBMJ-ps0_tE4XUJJ4tg__small/img/ikS8GkGgK5nIuB7U64WLm5GnQN4=/fit-in/200x150/filters:strip_icc()/pic7064789.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-11-17 00:27:08" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="174430" subtype="boardgame" collid="101871285">
        <name sortindex="1">Gloomhaven</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/sZYp_3BTDGjh2unaZfZmuA__original/img/7d-lj5Gd1e8PFnD97LYFah2c45M=/0x0/filters:format(jpeg)/pic2437871.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/sZYp_3BTDGjh2unaZfZmuA__small/img/veqFeP4d_3zNhFc3GNBkV95rBEQ=/fit-in/200x150/filters:strip_icc()/pic2437871.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-03 16:56:43" />
        <numplays>2</numplays>            <comment>kampagne durchgespielt</comment>                </item>
            <item objecttype="thing" objectid="250337" subtype="boardgame" collid="108390219">
        <name sortindex="1">Gloomhaven: Forgotten Circles</name>
            <yearpublished>2019</yearpublished>            <image>https://cf.geekdo-images.com/qV0P8aviaET-qIIUCZnvmA__original/img/kYnNMdUTH-2S11GWm2mhulVpUDg=/0x0/filters:format(jpeg)/pic4066738.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/qV0P8aviaET-qIIUCZnvmA__small/img/4t-2yn7uxNre3ZiRNHP4UTjIlsk=/fit-in/200x150/filters:strip_icc()/pic4066738.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-07-20 01:55:29" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="291457" subtype="boardgame" collid="101871631">
        <name sortindex="1">Gloomhaven: Jaws of the Lion</name>
            <yearpublished>2020</yearpublished>            <image>https://cf.geekdo-images.com/_HhIdavYW-hid20Iq3hhmg__original/img/PBzsLRqNKQKJxGnzpb7o3qLWPQM=/0x0/filters:format(jpeg)/pic5055631.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/_HhIdavYW-hid20Iq3hhmg__small/img/OMkN_E5eyWrkID_cHCnQEbIixGM=/fit-in/200x150/filters:strip_icc()/pic5055631.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-03 17:01:02" />
        <numplays>0</numplays>            <comment>kampagne durchgespielt</comment>                </item>
            <item objecttype="thing" objectid="380607" subtype="boardgame" collid="117352612">
        <name sortindex="1">Great Western Trail: New Zealand</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/X4KaD6ADLW1ohOznNay7xg__original/img/HhxsLMIsz6Te567qXEbRBen4Sm8=/0x0/filters:format(png)/pic7350809.png</image>
            <thumbnail>https://cf.geekdo-images.com/X4KaD6ADLW1ohOznNay7xg__small/img/iCWpe4ydO3Rtu6yBjn01eQ97xLc=/fit-in/200x150/filters:strip_icc()/pic7350809.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-30 17:38:10" />
        <numplays>6</numplays>            <comment>-0-</comment>                <wishlistcomment>Bestellt</wishlistcomment></item>
            <item objecttype="thing" objectid="98778" subtype="boardgame" collid="114135318">
        <name sortindex="1">Hanabi</name>
            <yearpublished>2010</yearpublished>            <image>https://cf.geekdo-images.com/JDVksMwfcqoem1k_xtZrOA__original/img/5vNHZiTEhK4aRDuGXv5KImp9cmQ=/0x0/filters:format(jpeg)/pic2007286.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/JDVksMwfcqoem1k_xtZrOA__small/img/amCeCcEKhYGbVtDvpvIMnu3qTg0=/fit-in/200x150/filters:strip_icc()/pic2007286.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-30 17:38:19" />
        <numplays>3</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="414317" subtype="boardgame" collid="117960670">
        <name sortindex="1">Harmonies</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/A_XP2_VN3ugyqPhezowB_w__original/img/_Rv8lSr3fC1oDRkrQleQW2H2yCs=/0x0/filters:format(png)/pic8026369.png</image>
            <thumbnail>https://cf.geekdo-images.com/A_XP2_VN3ugyqPhezowB_w__small/img/ln5eKAzhse2PIHvWn7bu-jiW_uk=/fit-in/200x150/filters:strip_icc()/pic8026369.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-30 17:38:32" />
        <numplays>28</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="35677" subtype="boardgame" collid="116759998">
        <name sortindex="4">Le Havre</name>
            <yearpublished>2008</yearpublished>            <image>https://cf.geekdo-images.com/y7Rqd3S6J7vyVhicR1bqTQ__original/img/tQFXv1w2R-J-1cjyaKG9LAS2UOs=/0x0/filters:format(jpeg)/pic6091101.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/y7Rqd3S6J7vyVhicR1bqTQ__small/img/w1iHoYZCVTDZI6gsPuxOScA7FqU=/fit-in/200x150/filters:strip_icc()/pic6091101.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:26:49" />
        <numplays>2</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="154597" subtype="boardgame" collid="118356823">
        <name sortindex="1">Hive Pocket</name>
            <yearpublished>2010</yearpublished>            <image>https://cf.geekdo-images.com/qxB2LU0536eKeByvNl3vcA__original/img/HxR4sVxK_YUaOSz89J_Y-o4qBcM=/0x0/filters:format(jpeg)/pic8229329.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/qxB2LU0536eKeByvNl3vcA__small/img/u-Mm0YOkr4MkmQqHLkh0uHTxHDI=/fit-in/200x150/filters:strip_icc()/pic8229329.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-30 17:38:47" />
        <numplays>8</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="436215" subtype="boardgame" collid="141823222">
        <name sortindex="5">The Hobbit: There and Back Again</name>
            <yearpublished>2025</yearpublished>            <image>https://cf.geekdo-images.com/KCsAkHzgdx9fL78c15N-dw__original/img/UrwVZtc6UJ9wO1_8lc7G2_NhAGU=/0x0/filters:format(png)/pic8831592.png</image>
            <thumbnail>https://cf.geekdo-images.com/KCsAkHzgdx9fL78c15N-dw__small/img/Pswt1H_wQIyaaLAtUuRDkmKCCQA=/fit-in/200x150/filters:strip_icc()/pic8831592.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-26 14:52:02" />
        <numplays>3</numplays>                            </item>
            <item objecttype="thing" objectid="423434" subtype="boardgame" collid="129908254">
        <name sortindex="1">Horrified: World of Monsters</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/vAXjjR0NGxe6ByES2O3smg__original/img/Ro19pEA3_7tDVcXNO8GZcaGMUEw=/0x0/filters:format(png)/pic8266078.png</image>
            <thumbnail>https://cf.geekdo-images.com/vAXjjR0NGxe6ByES2O3smg__small/img/xHn0-ZUuuaeae1Qel_6m7BQQxMg=/fit-in/200x150/filters:strip_icc()/pic8266078.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-03-01 12:55:26" />
        <numplays>8</numplays>                            </item>
            <item objecttype="thing" objectid="327778" subtype="boardgame" collid="126741448">
        <name sortindex="1">ito</name>
            <yearpublished>2019</yearpublished>            <image>https://cf.geekdo-images.com/CaGsrg17dVTXSP_7sjbm9w__original/img/ihUpUOGP4Pms1ukM5GitbCeFni8=/0x0/filters:format(png)/pic8381709.png</image>
            <thumbnail>https://cf.geekdo-images.com/CaGsrg17dVTXSP_7sjbm9w__small/img/8ETGKUTLt4EU-wmmPZwoIcNmPxk=/fit-in/200x150/filters:strip_icc()/pic8381709.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-30 17:39:05" />
        <numplays>67</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="377793" subtype="boardgame" collid="113647393">
        <name sortindex="1">Jekyll &amp; Hyde vs Scotland Yard</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/xs5xpsaXO-Ij2mWAWxoA5Q__original/img/vnEkb0TPA1_XJEiOQp5NkHvZCfs=/0x0/filters:format(png)/pic7976004.png</image>
            <thumbnail>https://cf.geekdo-images.com/xs5xpsaXO-Ij2mWAWxoA5Q__small/img/f9mRlUBrTGZU-zJ3Fx6-BsCfrZ0=/fit-in/200x150/filters:strip_icc()/pic7976004.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:27:00" />
        <numplays>18</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="254640" subtype="boardgame" collid="131482455">
        <name sortindex="1">Just One</name>
            <yearpublished>2018</yearpublished>            <image>https://cf.geekdo-images.com/74haNunMBn85beBi-yIKwA__original/img/hA22qL6nZxchA8FMTIfhLMcI53I=/0x0/filters:format(png)/pic8669313.png</image>
            <thumbnail>https://cf.geekdo-images.com/74haNunMBn85beBi-yIKwA__small/img/feIV-gqMeza43ycvxh6PGx4lA_w=/fit-in/200x150/filters:strip_icc()/pic8669313.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-30 17:39:19" />
        <numplays>5</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="394" subtype="boardgame" collid="112520969">
        <name sortindex="1">Kahuna</name>
            <yearpublished>1998</yearpublished>            <image>https://cf.geekdo-images.com/UdhhVlmQihMbvlNSvY1lUA__original/img/eFUPl6jyG6enyuTqqEE-4vGw7NI=/0x0/filters:format(jpeg)/pic2606165.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/UdhhVlmQihMbvlNSvY1lUA__small/img/bc5NxkspfUfPskxlC30SxlwNyxs=/fit-in/200x150/filters:strip_icc()/pic2606165.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-30 17:39:28" />
        <numplays>3</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="333255" subtype="boardgame" collid="99599999">
        <name sortindex="1">Keep the Heroes Out!</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/lfFKMNCzIJesp8IFHK8dEw__original/img/qtWs6Wg0a241k2D1TWWbesVwu-s=/0x0/filters:format(jpeg)/pic6985339.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/lfFKMNCzIJesp8IFHK8dEw__small/img/3et-UTpNaMhKlHPgnj89mkTkGkU=/fit-in/200x150/filters:strip_icc()/pic6985339.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:27:09" />
        <numplays>19</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="252446" subtype="boardgame" collid="119544564">
        <name sortindex="1">Key Flow</name>
            <yearpublished>2018</yearpublished>            <image>https://cf.geekdo-images.com/1o7i-hnpCiWC45QUnSOAgA__original/img/AmohYe_ob-CFkpCntm282LAJNJE=/0x0/filters:format(jpeg)/pic4264435.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/1o7i-hnpCiWC45QUnSOAgA__small/img/SyQQsxeI4PP3qaJk1q-ItgR6e3M=/fit-in/200x150/filters:strip_icc()/pic4264435.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:27:17" />
        <numplays>2</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="404538" subtype="boardgame" collid="119441456">
        <name sortindex="1">Kinfire Delve: Scorn&#039;s Stockade</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/LxT1pIebjvuYCUfDZjaB1w__original/img/vPuO_ecxMzPLVflXA0z2a41Clpw=/0x0/filters:format(png)/pic7830407.png</image>
            <thumbnail>https://cf.geekdo-images.com/LxT1pIebjvuYCUfDZjaB1w__small/img/xe0yNDJGR_gX4dqq4981Hm9nrbo=/fit-in/200x150/filters:strip_icc()/pic7830407.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-10-02 01:37:57" />
        <numplays>6</numplays>                            </item>
            <item objecttype="thing" objectid="391795" subtype="boardgame" collid="115427704">
        <name sortindex="1">Kinfire Delve: Vainglory&#039;s Grotto</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/io5dPH2ImA5uqoLsO7K1GA__original/img/YSHX304i8sCqhyvW6wk9Xy8Y1go=/0x0/filters:format(jpeg)/pic7570975.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/io5dPH2ImA5uqoLsO7K1GA__small/img/P613Xg4KWA4NO5KE4-ZOBqboTys=/fit-in/200x150/filters:strip_icc()/pic7570975.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-09-15 16:17:51" />
        <numplays>9</numplays>                            <wishlistcomment>verfügbar auf fantasywelt</wishlistcomment></item>
            <item objecttype="thing" objectid="272533" subtype="boardgame" collid="99599736">
        <name sortindex="1">Kingdom Rush: Rift in Time</name>
            <yearpublished>2020</yearpublished>            <image>https://cf.geekdo-images.com/MWBEOi-5jC1SJJqF8YDHvw__original/img/eVq7_yry6FWLmT28eCpMJyxcGuk=/0x0/filters:format(png)/pic4582182.png</image>
            <thumbnail>https://cf.geekdo-images.com/MWBEOi-5jC1SJJqF8YDHvw__small/img/Y-qHuQ5S69mbLrBhjSGZyfzFo9Q=/fit-in/200x150/filters:strip_icc()/pic4582182.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-02-16 11:57:53" />
        <numplays>3</numplays>                            </item>
            <item objecttype="thing" objectid="340041" subtype="boardgame" collid="120558946">
        <name sortindex="1">Kingdomino Origins</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/MUM0pZVIb6ImCmuoE7g1tQ__original/img/ccWNQSEMtjdW1_khIJaGzOHHSc0=/0x0/filters:format(jpeg)/pic6249158.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/MUM0pZVIb6ImCmuoE7g1tQ__small/img/MJ4SJNXXDXDzwqEriS59Uq8rc6E=/fit-in/200x150/filters:strip_icc()/pic6249158.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-30 17:39:48" />
        <numplays>3</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="165722" subtype="boardgame" collid="126950937">
        <name sortindex="1">KLASK</name>
            <yearpublished>2014</yearpublished>            <image>https://cf.geekdo-images.com/oPNuEm_dR987BKoYEF9zGQ__original/img/ZNqEkLMKkrIPxRduZWmWC6VBgoY=/0x0/filters:format(png)/pic7414566.png</image>
            <thumbnail>https://cf.geekdo-images.com/oPNuEm_dR987BKoYEF9zGQ__small/img/JeO68IlD-DGB8zg2ozB-3MmpN2s=/fit-in/200x150/filters:strip_icc()/pic7414566.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-30 17:39:57" />
        <numplays>215</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="379629" subtype="boardgame" collid="114063035">
        <name sortindex="1">Knarr</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/PaYRAlezMGDlLt8LXmR_sQ__original/img/9nndYkVCIDsSHM3CmuiLk-0WCHk=/0x0/filters:format(png)/pic7857343.png</image>
            <thumbnail>https://cf.geekdo-images.com/PaYRAlezMGDlLt8LXmR_sQ__small/img/9BXSosnE91-b8tHUEz3Qgfr0aAo=/fit-in/200x150/filters:strip_icc()/pic7857343.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:27:36" />
        <numplays>7</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="204801" subtype="boardgame" collid="132124000">
        <name sortindex="1">Kneipenquiz: Das Original</name>
            <yearpublished>2016</yearpublished>            <image>https://cf.geekdo-images.com/JHT1AXUYkXmggbngHcTpow__original/img/y_EZfSTF8fy2lnVC08wdE4F_4g8=/0x0/filters:format(jpeg)/pic7372358.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/JHT1AXUYkXmggbngHcTpow__small/img/T4uw_7rc6LG8d6M7QlZscKcBNjA=/fit-in/200x150/filters:strip_icc()/pic7372358.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-05-09 08:01:05" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="358737" subtype="boardgame" collid="119551065">
        <name sortindex="1">Leviathan Wilds</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/k_iHhr7ltGhj46u4oQ4YAQ__original/img/qSlgK-1y9-AgtOAA86R9gt9XNaI=/0x0/filters:format(jpeg)/pic7976770.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/k_iHhr7ltGhj46u4oQ4YAQ__small/img/-YtdhfpOEJNDPIbJovPSjDMXgec=/fit-in/200x150/filters:strip_icc()/pic7976770.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-12-08 08:25:50" />
        <numplays>12</numplays>            <comment>-12-</comment>                <wishlistcomment>Vorbestellt</wishlistcomment></item>
            <item objecttype="thing" objectid="341519" subtype="boardgame" collid="114543501">
        <name sortindex="5">The Light in the Mist</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/kDX5fg82XYZBJ5cF2ttwbQ__original/img/bW9ym5crS-0qIHvUJV6MmpTCpsQ=/0x0/filters:format(jpeg)/pic6266380.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/kDX5fg82XYZBJ5cF2ttwbQ__small/img/_-RA4B9thAH6suCz6JrOR2W4fhw=/fit-in/200x150/filters:strip_icc()/pic6266380.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-12-08 08:26:33" />
        <numplays>26</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="330038" subtype="boardgame" collid="118667276">
        <name sortindex="1">Llamaland</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/SZS3cUukT7DFA04aNMjD5A__original/img/916JpcDbN66156QkN2AcBNZnOY4=/0x0/filters:format(jpeg)/pic6036704.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/SZS3cUukT7DFA04aNMjD5A__small/img/2nYAiUDGDP8x_2kXhBYUaMsQ7ZI=/fit-in/200x150/filters:strip_icc()/pic6036704.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:27:51" />
        <numplays>4</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="316412" subtype="boardgame" collid="99599612">
        <name sortindex="5">The LOOP</name>
            <yearpublished>2020</yearpublished>            <image>https://cf.geekdo-images.com/NPWdxDD5uLOBLBDdVgdLvA__original/img/zlx0Qqcgt0TLu62F5sKUmYTDNvc=/0x0/filters:format(png)/pic6034093.png</image>
            <thumbnail>https://cf.geekdo-images.com/NPWdxDD5uLOBLBDdVgdLvA__small/img/7464PJPFWWPzsOUMvf8t860zct0=/fit-in/200x150/filters:strip_icc()/pic6034093.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:27:57" />
        <numplays>14</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="429293" subtype="boardgame" collid="139425923">
        <name sortindex="5">The Lord of the Rings: The Fellowship of the Ring – Trick-Taking Game</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/uC4N_3kQdoHefNPesAHCzQ__original/img/ohKFXmrxtaOPqJyiIMaABIy-WjU=/0x0/filters:format(png)/pic8437787.png</image>
            <thumbnail>https://cf.geekdo-images.com/uC4N_3kQdoHefNPesAHCzQ__small/img/hLjGKsIwJP43656LEnehjFVRzDE=/fit-in/200x150/filters:strip_icc()/pic8437787.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:28:03" />
        <numplays>32</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="312484" subtype="boardgame" collid="112902691">
        <name sortindex="1">Lost Ruins of Arnak</name>
            <yearpublished>2020</yearpublished>            <image>https://cf.geekdo-images.com/6GqH14TJJhza86BX5HCLEQ__original/img/CXqwimJPonWy1oyXEMgPN_ZVmUI=/0x0/filters:format(jpeg)/pic5674958.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/6GqH14TJJhza86BX5HCLEQ__small/img/J8SVmGOJXZGxNjkT3xYNQU7Haxg=/fit-in/200x150/filters:strip_icc()/pic5674958.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:28:12" />
        <numplays>8</numplays>            <comment>-0-</comment>                <wishlistcomment>cooles spiel, aber eher fuer 3-4 spieler</wishlistcomment></item>
            <item objecttype="thing" objectid="341254" subtype="boardgame" collid="128808512">
        <name sortindex="1">Lost Ruins of Arnak: Expedition Leaders</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/U4aoXbKATU7YbA8bAT73FQ__original/img/TKJnD49aci6Soc214_MTUe1iNmg=/0x0/filters:format(png)/pic6253876.png</image>
            <thumbnail>https://cf.geekdo-images.com/U4aoXbKATU7YbA8bAT73FQ__small/img/g0aac2-OQvMbEPXv1vIvSumPmkA=/fit-in/200x150/filters:strip_icc()/pic6253876.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:28:19" />
        <numplays>0</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="382350" subtype="boardgame" collid="116847173">
        <name sortindex="1">Lost Ruins of Arnak: The Missing Expedition</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/TABbfOUUMAuD6R7WEK8PZg__original/img/tVpMJ721tH_l24mgrNcNSEPhVfY=/0x0/filters:format(jpeg)/pic7412877.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/TABbfOUUMAuD6R7WEK8PZg__small/img/N7kNan3PbUo_5sK_4KT7A-iddRc=/fit-in/200x150/filters:strip_icc()/pic7412877.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:28:23" />
        <numplays>0</numplays>            <comment>-0-</comment>                <wishlistcomment>coop campagne</wishlistcomment></item>
            <item objecttype="thing" objectid="209778" subtype="boardgame" collid="140186771">
        <name sortindex="1">Magic Maze</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/wJfDIveg2zpTGn8E1WzEpA__original/img/hlp96WuBfwiCijcfPddNmfgTq6E=/0x0/filters:format(jpeg)/pic3268473.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/wJfDIveg2zpTGn8E1WzEpA__small/img/Un57jB38oeBZ0WFdd7rXSOEP-1k=/fit-in/200x150/filters:strip_icc()/pic3268473.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:28:29" />
        <numplays>23</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="283863" subtype="boardgame" collid="119911571">
        <name sortindex="5">The Magnificent</name>
            <yearpublished>2019</yearpublished>            <image>https://cf.geekdo-images.com/6pci74DWc7U7XuwkfpEu2Q__original/img/wrPl4ne51gvMUIeUuv56k02CUhE=/0x0/filters:format(jpeg)/pic4871117.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/6pci74DWc7U7XuwkfpEu2Q__small/img/K-X_5jjTMmesaFzFUoFOZu5p_AU=/fit-in/200x150/filters:strip_icc()/pic4871117.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-30 04:53:35" />
        <numplays>3</numplays>                            </item>
            <item objecttype="thing" objectid="205059" subtype="boardgame" collid="101871516">
        <name sortindex="1">Mansions of Madness: Second Edition</name>
            <yearpublished>2016</yearpublished>            <image>https://cf.geekdo-images.com/LIooA9bTdjnE9qmhjL-UFw__original/img/Go6c8-ZiXomS8E7X4MBCdDd-aZc=/0x0/filters:format(jpeg)/pic3118622.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/LIooA9bTdjnE9qmhjL-UFw__small/img/kwaa7aI2sMeyWV5JSRKcKrS5hC8=/fit-in/200x150/filters:strip_icc()/pic3118622.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-05 15:20:06" />
        <numplays>0</numplays>            <comment>kampagne durchgespielt</comment>                </item>
            <item objecttype="thing" objectid="315610" subtype="boardgame" collid="99599753">
        <name sortindex="1">Massive Darkness 2: Hellscape</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/e-QmT0KuEc0E4bWNih6EVQ__original/img/alQDRawS3Soxpe-sCU3_WBNUCNk=/0x0/filters:format(png)/pic6107854.png</image>
            <thumbnail>https://cf.geekdo-images.com/e-QmT0KuEc0E4bWNih6EVQ__small/img/Q1WD-ufxyF37HxWH5T6t8amKcqk=/fit-in/200x150/filters:strip_icc()/pic6107854.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-02-01 14:20:14" />
        <numplays>15</numplays>                            <wishlistcomment>bestellt</wishlistcomment></item>
            <item objecttype="thing" objectid="314491" subtype="boardgame" collid="116421636">
        <name sortindex="1">Meadow</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/9r3qdPijtgoIN24PxFU2gw__original/img/tHQTKwwk4N8J5fpWhsoE8t0FQhw=/0x0/filters:format(jpeg)/pic5894745.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/9r3qdPijtgoIN24PxFU2gw__small/img/tugW5aKyC6Vs31QaBX8YvmQiPTQ=/fit-in/200x150/filters:strip_icc()/pic5894745.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:28:54" />
        <numplays>6</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="124708" subtype="boardgame" collid="101871614">
        <name sortindex="1">Mice and Mystics</name>
            <yearpublished>2012</yearpublished>            <image>https://cf.geekdo-images.com/pZFrbWXBzrkxqOotg05D9Q__original/img/2cwA1euTZ-Lm7hMBEJTBkrRl1dQ=/0x0/filters:format(jpeg)/pic1312072.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/pZFrbWXBzrkxqOotg05D9Q__small/img/nrgg_ID3yq1r5dZ6iWe4de3GW6E=/fit-in/200x150/filters:strip_icc()/pic1312072.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-03 16:57:23" />
        <numplays>0</numplays>            <comment>kampagne durchgespielt</comment>                </item>
            <item objecttype="thing" objectid="159458" subtype="boardgame" collid="108390276">
        <name sortindex="1">Mice and Mystics: Downwood Tales</name>
            <yearpublished>2014</yearpublished>            <image>https://cf.geekdo-images.com/9RrGhG-Jv9tDuOX-msQ2tQ__original/img/7IeG40ESG3B8Ju21LUnDVakCFvA=/0x0/filters:format(jpeg)/pic2038331.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/9RrGhG-Jv9tDuOX-msQ2tQ__small/img/-kT8cJHwBvAKk4JnAjUi1V85Xgs=/fit-in/200x150/filters:strip_icc()/pic2038331.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-03 17:00:07" />
        <numplays>0</numplays>            <comment>kampagne durchgespielt</comment>                </item>
            <item objecttype="thing" objectid="144777" subtype="boardgame" collid="108390278">
        <name sortindex="1">Mice and Mystics: Heart of Glorm</name>
            <yearpublished>2013</yearpublished>            <image>https://cf.geekdo-images.com/A9rQiuku-GyxLBB7tFgxLg__original/img/Evi-Nt_5Wl8D3y7rAn2C-nt_qsQ=/0x0/filters:format(jpeg)/pic1709639.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/A9rQiuku-GyxLBB7tFgxLg__small/img/rgC2vBajVidoK-2-nYqrmzCr3Lc=/fit-in/200x150/filters:strip_icc()/pic1709639.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-03 17:00:24" />
        <numplays>0</numplays>            <comment>kampagne durchgespielt</comment>                </item>
            <item objecttype="thing" objectid="169427" subtype="boardgame" collid="99599498">
        <name sortindex="1">Middara: Unintentional Malum – Act 1</name>
            <yearpublished>2019</yearpublished>            <image>https://cf.geekdo-images.com/hRuD1y5BxdNpssgBqamS0A__original/img/yyJfhGhGV9cvzvAjnVsopysHNNM=/0x0/filters:format(jpeg)/pic4595897.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/hRuD1y5BxdNpssgBqamS0A__small/img/fpUu1t2YLjJ4EvEzBGTKtZasNv4=/fit-in/200x150/filters:strip_icc()/pic4595897.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-19 05:42:27" />
        <numplays>0</numplays>                            <wishlistcomment>pledged</wishlistcomment></item>
            <item objecttype="thing" objectid="345584" subtype="boardgame" collid="112012308">
        <name sortindex="1">Mindbug: First Contact</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/b8gl6w-BqUVgBURdyFcFZg__original/img/chGo_gyJr418yMPchcWhLoW5AjQ=/0x0/filters:format(png)/pic7646386.png</image>
            <thumbnail>https://cf.geekdo-images.com/b8gl6w-BqUVgBURdyFcFZg__small/img/dCGADcFu3CrjHeao9JKibUHYUik=/fit-in/200x150/filters:strip_icc()/pic7646386.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:29:04" />
        <numplays>4</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="358124" subtype="boardgame" collid="110648738">
        <name sortindex="1">Mists over Carcassonne</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/yRFr7i5heyw9pIcuJ50jFw__original/img/C33xMMnOA4NMoH-CByHB1bYyUyI=/0x0/filters:format(jpeg)/pic7336367.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/yRFr7i5heyw9pIcuJ50jFw__small/img/q_aOK5OUgItLzYrSJwpOd58LgRo=/fit-in/200x150/filters:strip_icc()/pic7336367.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:29:13" />
        <numplays>39</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="373759" subtype="boardgame" collid="116078830">
        <name sortindex="1">Monolyth</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/r_VurIdvm1-kIuFjycNOew__original/img/e1gKrdsE8ZIMNxXY1A-JE0IQJbQ=/0x0/filters:format(jpeg)/pic7149843.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/r_VurIdvm1-kIuFjycNOew__small/img/ndwvPfD_Tb07PEm7S_BbRI6qljA=/fit-in/200x150/filters:strip_icc()/pic7149843.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:29:21" />
        <numplays>4</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="192312" subtype="boardgame" collid="117381514">
        <name sortindex="1">Mr. Cabbagehead&#039;s Garden</name>
            <yearpublished>2016</yearpublished>            <image>https://cf.geekdo-images.com/1xnqvvQMde7Lu5msb2XBhw__original/img/L8E2SgC_sKsRjKCCFPoK9cxEnn8=/0x0/filters:format(jpeg)/pic4092661.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/1xnqvvQMde7Lu5msb2XBhw__small/img/THRAXQtxVBCZmq67rIQBqBQ6lqo=/fit-in/200x150/filters:strip_icc()/pic4092661.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-06-01 08:08:01" />
        <numplays>2</numplays>                            </item>
            <item objecttype="thing" objectid="181304" subtype="boardgame" collid="115325117">
        <name sortindex="1">Mysterium</name>
            <yearpublished>2015</yearpublished>            <image>https://cf.geekdo-images.com/1nQ3ZKudtDeAP7IiKE-kNg__original/img/6igmXolQesapNU9yEnexip6m9B8=/0x0/filters:format(jpeg)/pic8625343.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/1nQ3ZKudtDeAP7IiKE-kNg__small/img/sW38512N2r1ZuuPE2TUD2LNfoxM=/fit-in/200x150/filters:strip_icc()/pic8625343.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-26 14:51:43" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="361850" subtype="boardgame" collid="116323954">
        <name sortindex="1">Nimalia</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/tnq1wgSH40Iwu1TGkuUUmA__original/img/wbJA-oFtKoPqTGp364YhUirmZBg=/0x0/filters:format(png)/pic7184172.png</image>
            <thumbnail>https://cf.geekdo-images.com/tnq1wgSH40Iwu1TGkuUUmA__small/img/PDqD4nV0iQqA8z45OLaRCAjg1aM=/fit-in/200x150/filters:strip_icc()/pic7184172.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:29:31" />
        <numplays>7</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="284435" subtype="boardgame" collid="112487357">
        <name sortindex="1">Nova Luna</name>
            <yearpublished>2019</yearpublished>            <image>https://cf.geekdo-images.com/k8OZeKYMN2vVSVCl5FD-UA__original/img/XiytG0d5nHtdoN4Kq3pCM6VcSac=/0x0/filters:format(jpeg)/pic5382418.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/k8OZeKYMN2vVSVCl5FD-UA__small/img/lRMeiFcB9C3ivyZlCoPRQe5xKNU=/fit-in/200x150/filters:strip_icc()/pic5382418.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:29:39" />
        <numplays>10</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="123370" subtype="boardgame" collid="110648748">
        <name sortindex="1">Nox</name>
            <yearpublished>2012</yearpublished>            <image>https://cf.geekdo-images.com/aCr5qkpGBhny9FT4522L-A__original/img/qsBJ5O0ATsc6Fp7jcCvITSNLg1o=/0x0/filters:format(jpeg)/pic1874718.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/aCr5qkpGBhny9FT4522L-A__small/img/6wXRrU-kImyDkxXS91qrC3feIt4=/fit-in/200x150/filters:strip_icc()/pic1874718.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:29:52" />
        <numplays>15</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="251661" subtype="boardgame" collid="110648669">
        <name sortindex="1">Oathsworn: Into the Deepwood</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/dezQ4YjF03lZVxTdI-UJYw__original/img/smV4u2r1moRbzsSTzykECb06Mpo=/0x0/filters:format(jpeg)/pic6863204.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/dezQ4YjF03lZVxTdI-UJYw__small/img/ddtxNyNC1fPEi5M-uc-dQyNovws=/fit-in/200x150/filters:strip_icc()/pic6863204.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-09-28 01:19:27" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="300531" subtype="boardgame" collid="120053214">
        <name sortindex="1">Paleo</name>
            <yearpublished>2020</yearpublished>            <image>https://cf.geekdo-images.com/85t1wkwgvh3d2mmjsRcDrw__original/img/ejYTb1MVpf9optjLWlwbYua0TMk=/0x0/filters:format(jpeg)/pic6039256.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/85t1wkwgvh3d2mmjsRcDrw__small/img/K1IMVdd39Or51HpLAfiXz3JNUvI=/fit-in/200x150/filters:strip_icc()/pic6039256.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:30:01" />
        <numplays>10</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="398996" subtype="boardgame" collid="139324921">
        <name sortindex="1">Panda Royale</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/4qSXZhz2Y57goC704eI0RQ__original/img/KDRsfzJBwpAzzdV0KsnTvzywW-Y=/0x0/filters:format(png)/pic7684828.png</image>
            <thumbnail>https://cf.geekdo-images.com/4qSXZhz2Y57goC704eI0RQ__small/img/6JqLZVjkwyFzmm-A4k6obDHforc=/fit-in/200x150/filters:strip_icc()/pic7684828.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-12-02 15:48:42" />
        <numplays>15</numplays>                            </item>
            <item objecttype="thing" objectid="437306" subtype="boardgame" collid="140186760">
        <name sortindex="1">Parks (Second Edition)</name>
            <yearpublished>2025</yearpublished>            <image>https://cf.geekdo-images.com/hHnw1JGLaEkJXaOv8bm6YQ__original/img/ptOJJyJ1acojUJIbEJ7zobysPzw=/0x0/filters:format(jpeg)/pic8660069.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/hHnw1JGLaEkJXaOv8bm6YQ__small/img/VueCGH75QOD4dv0yeaKqQZgTqMo=/fit-in/200x150/filters:strip_icc()/pic8660069.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:30:18" />
        <numplays>2</numplays>            <comment>-1-</comment>                </item>
            <item objecttype="thing" objectid="411875" subtype="boardgame" collid="117930411">
        <name sortindex="1">Pixies</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/HzOXZ-dmxkD0ZJoHF49_vA__original/img/kGlcHoV6DViw14Nxo8_QydXl1RU=/0x0/filters:format(jpeg)/pic7975645.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/HzOXZ-dmxkD0ZJoHF49_vA__small/img/S4swCbvBHeQBOJk9Ah2-d-Ybr4k=/fit-in/200x150/filters:strip_icc()/pic7975645.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:30:24" />
        <numplays>4</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="258779" subtype="boardgame" collid="111628876">
        <name sortindex="1">Planet Unknown</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/3HkjDovk8Yr2wMumcSUGog__original/img/hl_WEzG4mKaEW_7qrZf-sPxXMpI=/0x0/filters:format(jpeg)/pic4843622.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/3HkjDovk8Yr2wMumcSUGog__small/img/4pF1oDpvn1VR3rbvW88xLK86xmA=/fit-in/200x150/filters:strip_icc()/pic4843622.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:30:31" />
        <numplays>11</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="331265" subtype="boardgame" collid="117609443">
        <name sortindex="1">Port Royal: Big Box</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/T2czH3s3vbNV0pf1bZhhQQ__original/img/JjOQBblshAUuKKtYxIqQ3CKM4bM=/0x0/filters:format(jpeg)/pic6265475.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/T2czH3s3vbNV0pf1bZhhQQ__small/img/NXTT9UmuP8b6xTn0_6kSF7bcRB8=/fit-in/200x150/filters:strip_icc()/pic6265475.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:30:38" />
        <numplays>10</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="180974" subtype="boardgame" collid="119075862">
        <name sortindex="1">Potion Explosion</name>
            <yearpublished>2015</yearpublished>            <image>https://cf.geekdo-images.com/vwjYMFporFhvAU48k73MIw__original/img/6sAfG89R42SJRv2wjiItRTMmcoQ=/0x0/filters:format(jpeg)/pic7298696.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/vwjYMFporFhvAU48k73MIw__small/img/uNBrY-gqZLq7aiv1E_pDsc3vmyE=/fit-in/200x150/filters:strip_icc()/pic7298696.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:30:44" />
        <numplays>10</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="260180" subtype="boardgame" collid="110648699">
        <name sortindex="1">Project L</name>
            <yearpublished>2020</yearpublished>            <image>https://cf.geekdo-images.com/Zwx2ZXS6r6PaxhkaVEe75Q__original/img/nBfsV9V5a-xc3uJkYhE0DN-QVjI=/0x0/filters:format(jpeg)/pic4309147.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/Zwx2ZXS6r6PaxhkaVEe75Q__small/img/3x5kSxZlvLK6PdeMHX9xd_sSTMs=/fit-in/200x150/filters:strip_icc()/pic4309147.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-09-28 01:21:42" />
        <numplays>16</numplays>                            </item>
            <item objecttype="thing" objectid="423170" subtype="boardgame" collid="141026931">
        <name sortindex="1">Pyradice</name>
            <yearpublished>2025</yearpublished>            <image>https://cf.geekdo-images.com/C-Twr3Eau3pvK7JgxF1kfQ__original/img/QBjqudBYlzuspd9Ous9viYuhUuM=/0x0/filters:format(png)/pic8737127.png</image>
            <thumbnail>https://cf.geekdo-images.com/C-Twr3Eau3pvK7JgxF1kfQ__small/img/348A9FLJsiTWexEoDQBNqlMcP8c=/fit-in/200x150/filters:strip_icc()/pic8737127.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-27 14:31:34" />
        <numplays>3</numplays>            <comment>-43-</comment>                </item>
            <item objecttype="thing" objectid="244521" subtype="boardgame" collid="106765545">
        <name sortindex="1">Quacks</name>
            <yearpublished>2018</yearpublished>            <image>https://cf.geekdo-images.com/B1bLRWzTASZ-xx9NoAE79A__original/img/HulJk6gFzp_bxl0wzc2XEMq8NLM=/0x0/filters:format(png)/pic8780293.png</image>
            <thumbnail>https://cf.geekdo-images.com/B1bLRWzTASZ-xx9NoAE79A__small/img/deG3pr-ORZ3JrGvQA-oQNrwh0l0=/fit-in/200x150/filters:strip_icc()/pic8780293.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:31:11" />
        <numplays>10</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="367375" subtype="boardgame" collid="99600616">
        <name sortindex="1">Race to the Raft</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/ECx38-O1kvUBhq_-fY1lkA__original/img/u_Rv_bCy6bts_fU9tbEtJ9olqLo=/0x0/filters:format(jpeg)/pic7091632.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/ECx38-O1kvUBhq_-fY1lkA__small/img/T7BpCR_nXuZGEVwtnIUCJx5AvjI=/fit-in/200x150/filters:strip_icc()/pic7091632.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:31:19" />
        <numplays>6</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="366683" subtype="boardgame" collid="115328038">
        <name sortindex="1">Raising Robots</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/kGmrDjZ1ZZ3HddqqN8aqnQ__original/img/AVOzSY2_SWGZjskLpwTHG5lDqyA=/0x0/filters:format(png)/pic7366753.png</image>
            <thumbnail>https://cf.geekdo-images.com/kGmrDjZ1ZZ3HddqqN8aqnQ__small/img/JfazUjPd-mKowbCESp0nYgYYJ1U=/fit-in/200x150/filters:strip_icc()/pic7366753.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:31:45" />
        <numplays>4</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="220877" subtype="boardgame" collid="118216432">
        <name sortindex="1">Rajas of the Ganges</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/hR5sxxqNY3gjvLwifaqRww__original/img/kaXHOjBJX-URkjTjhQUhFl7E8Ng=/0x0/filters:format(jpeg)/pic3646165.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/hR5sxxqNY3gjvLwifaqRww__small/img/dPZ7zqlIVCt4xiWfISkpujiwKwk=/fit-in/200x150/filters:strip_icc()/pic3646165.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-02-01 04:47:23" />
        <numplays>7</numplays>            <comment>-48-</comment>                </item>
            <item objecttype="thing" objectid="332772" subtype="boardgame" collid="114337496">
        <name sortindex="1">Revive</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/V0OZ9QR0pC9G5t5i9MoZTQ__original/img/NxxAoxVxMNkDGEkD3aoobPL14dI=/0x0/filters:format(jpeg)/pic6950224.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/V0OZ9QR0pC9G5t5i9MoZTQ__small/img/NPtXuKlsnfPORSn6kpTcf-ZdEF0=/fit-in/200x150/filters:strip_icc()/pic6950224.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:31:52" />
        <numplays>10</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="66056" subtype="boardgame" collid="113903409">
        <name sortindex="1">Rivals for Catan</name>
            <yearpublished>2010</yearpublished>            <image>https://cf.geekdo-images.com/n5x9eZiQ7Da4SQjB7M41-w__original/img/Y6dJpidB1624ox-QCAdiSVsCnf4=/0x0/filters:format(jpeg)/pic6877018.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/n5x9eZiQ7Da4SQjB7M41-w__small/img/dGMw2df-4gOwfLCdUeJceBeLCk8=/fit-in/200x150/filters:strip_icc()/pic6877018.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-12-24 14:58:24" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="121921" subtype="boardgame" collid="116223701">
        <name sortindex="1">Robinson Crusoe: Adventures on the Cursed Island</name>
            <yearpublished>2012</yearpublished>            <image>https://cf.geekdo-images.com/zvHPgrNb9mgkHQk-BwVemA__original/img/OUdMMPwYXTd5JIBG9skImPqa8bg=/0x0/filters:format(jpeg)/pic6026697.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/zvHPgrNb9mgkHQk-BwVemA__small/img/QNF6GAuZ6TTeSYtrWZlWvPaIWjs=/fit-in/200x150/filters:strip_icc()/pic6026697.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-02-12 16:20:59" />
        <numplays>3</numplays>                            </item>
            <item objecttype="thing" objectid="365670" subtype="boardgame" collid="102624042">
        <name sortindex="1">Rove</name>
            <yearpublished>2025</yearpublished>            <image>https://cf.geekdo-images.com/QtLIH1Hf2bA2Ix9b0vIGUA__original/img/eRColgCBu1b92FqtZXhUfSIFMZ0=/0x0/filters:format(jpeg)/pic6978243.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/QtLIH1Hf2bA2Ix9b0vIGUA__small/img/0cPFpYhYKsnyInJUXPndcaXFN68=/fit-in/200x150/filters:strip_icc()/pic6978243.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-11-05 15:08:14" />
        <numplays>33</numplays>                            <wishlistcomment>Pledged</wishlistcomment></item>
            <item objecttype="thing" objectid="811" subtype="boardgame" collid="119749290">
        <name sortindex="1">Rummikub</name>
            <yearpublished>1977</yearpublished>            <image>https://cf.geekdo-images.com/LeaLDlTTmeN639MfuflcMw__original/img/fusGQFpm4srwqhM8CDlEDzh0NyQ=/0x0/filters:format(jpeg)/pic2286966.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/LeaLDlTTmeN639MfuflcMw__small/img/CSPEyoFAcA3WwtzDekp3Mfepcek=/fit-in/200x150/filters:strip_icc()/pic2286966.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:33:44" />
        <numplays>8</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="396542" subtype="boardgame" collid="117579249">
        <name sortindex="5">The Same Game</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/R7GZPK79bMdsCZFamu7Z7A__original/img/4nFW02x2VogCfuoGk6Zv9H7X9hI=/0x0/filters:format(jpeg)/pic7653476.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/R7GZPK79bMdsCZFamu7Z7A__small/img/YedpMxJGgeYiywHl4wW9_JlPtfM=/fit-in/200x150/filters:strip_icc()/pic7653476.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-05-09 08:00:38" />
        <numplays>2</numplays>                            </item>
            <item objecttype="thing" objectid="367220" subtype="boardgame" collid="112011938">
        <name sortindex="1">Sea Salt &amp; Paper</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/CIh_rXKoRw9z8K0PJxT8nQ__original/img/AX2wyHhWFgVh5OArXAjVHY-nFZg=/0x0/filters:format(jpeg)/pic6973911.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/CIh_rXKoRw9z8K0PJxT8nQ__small/img/Jh6NjibuHeYrZtSsAUXq82B1fTQ=/fit-in/200x150/filters:strip_icc()/pic6973911.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:33:52" />
        <numplays>8</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="146791" subtype="boardgame" collid="114506741">
        <name sortindex="1">Shadows of Brimstone: City of the Ancients</name>
            <yearpublished>2014</yearpublished>            <image>https://cf.geekdo-images.com/ZnkF6PeVDEOJvc2EHT7ZHw__original/img/NUw0DtFPhK-whyBaXVLg_c1oK1o=/0x0/filters:format(jpeg)/pic2037825.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/ZnkF6PeVDEOJvc2EHT7ZHw__small/img/O6DtRhRClEvh2JMyHUa401D4Rdg=/fit-in/200x150/filters:strip_icc()/pic2037825.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-04-11 01:16:19" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="150997" subtype="boardgame" collid="114506786">
        <name sortindex="1">Shadows of Brimstone: Swamps of Death</name>
            <yearpublished>2014</yearpublished>            <image>https://cf.geekdo-images.com/qRyYKK4IxR9QBwyr7OMvzw__original/img/ZPbsr9giTmRBE7yb6gwx05rPd4o=/0x0/filters:format(jpeg)/pic2037826.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/qRyYKK4IxR9QBwyr7OMvzw__small/img/9K95Z2kFVqnIXKCqJ4vBA2uZkm4=/fit-in/200x150/filters:strip_icc()/pic2037826.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-04 03:32:30" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="373106" subtype="boardgame" collid="110326733">
        <name sortindex="1">Sky Team</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/uXMeQzNenHb3zK7Hoa6b2w__original/img/mWOQnkpyYBorh_Y1-0Y2o-ew17k=/0x0/filters:format(jpeg)/pic7398904.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/uXMeQzNenHb3zK7Hoa6b2w__small/img/WyPClajMWU9lV5BdCXiZnqdZgmU=/fit-in/200x150/filters:strip_icc()/pic7398904.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:34:24" />
        <numplays>53</numplays>            <comment>-8-</comment>                <wishlistcomment>coop ohne kommunikation</wishlistcomment></item>
            <item objecttype="thing" objectid="423177" subtype="boardgame" collid="135948918">
        <name sortindex="1">Sky Team: Turbulence</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/zt2NF-zMT0Se44iNVLUNPA__original/img/YdITnmGbuEe3AT1DfJjG0bxRafA=/0x0/filters:format(png)/pic8259335.png</image>
            <thumbnail>https://cf.geekdo-images.com/zt2NF-zMT0Se44iNVLUNPA__small/img/PSy5yvPdad4z4oYx-BQFe_ee_tI=/fit-in/200x150/filters:strip_icc()/pic8259335.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:34:33" />
        <numplays>0</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="398684" subtype="boardgame" collid="113933807">
        <name sortindex="1">Skyrockets: Festivals of Fire</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/hdTmBDULxX3qHtfbVaVEJw__original/img/raEYLGuZ6Qni2jVKwwWkxFc0JHs=/0x0/filters:format(jpeg)/pic7691657.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/hdTmBDULxX3qHtfbVaVEJw__small/img/vCT8oglfrakbMUe1CM75xH6OUes=/fit-in/200x150/filters:strip_icc()/pic7691657.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:34:40" />
        <numplays>6</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="255984" subtype="boardgame" collid="99599409">
        <name sortindex="1">Sleeping Gods</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/Zdt8l4oTBpFICsMyNof7Jg__original/img/-okZ810RkA8fKKhIeZyX4cnqmbE=/0x0/filters:format(png)/pic5975244.png</image>
            <thumbnail>https://cf.geekdo-images.com/Zdt8l4oTBpFICsMyNof7Jg__small/img/71w4Tt3xOnuDEDTCG8ni63QUhVE=/fit-in/200x150/filters:strip_icc()/pic5975244.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-05-14 00:31:03" />
        <numplays>11</numplays>                            </item>
            <item objecttype="thing" objectid="242302" subtype="boardgame" collid="117440568">
        <name sortindex="1">Space Base</name>
            <yearpublished>2018</yearpublished>            <image>https://cf.geekdo-images.com/MHhQxXVjiaa6C-04nGiIWw__original/img/QyWen0FVOKD_4wf7Na7fdsMTjis=/0x0/filters:format(jpeg)/pic6640638.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/MHhQxXVjiaa6C-04nGiIWw__small/img/rgETRyeuYs_wiZ5y-9Zj5H8kyFo=/fit-in/200x150/filters:strip_icc()/pic6640638.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:34:55" />
        <numplays>22</numplays>            <comment>-2-</comment>                </item>
            <item objecttype="thing" objectid="162886" subtype="boardgame" collid="101871479">
        <name sortindex="1">Spirit Island</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/kjCm4ZvPjIZxS-mYgSPy1g__original/img/9uLd9C3XAvInLCLhAoXqKVk56zs=/0x0/filters:format(jpeg)/pic7013651.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/kjCm4ZvPjIZxS-mYgSPy1g__small/img/aUlIih2_R7P8IYKeyNl2heLQbu8=/fit-in/200x150/filters:strip_icc()/pic7013651.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-10 01:35:04" />
        <numplays>25</numplays>            <comment>-0-</comment>                </item>
            <item objecttype="thing" objectid="193065" subtype="boardgame" collid="108390297">
        <name sortindex="1">Spirit Island: Branch &amp; Claw</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/l1k4gxERlIuhCNIn3TPU_g__original/img/IfWWkvqshUOSNPCOqjX7tP_iP0g=/0x0/filters:format(jpeg)/pic7010668.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/l1k4gxERlIuhCNIn3TPU_g__small/img/YrbMam9JFeUqXHrPPXLxrSYlYK0=/fit-in/200x150/filters:strip_icc()/pic7010668.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-07-20 02:01:23" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="262722" subtype="boardgame" collid="108390294">
        <name sortindex="1">Spirit Island: Jagged Earth</name>
            <yearpublished>2020</yearpublished>            <image>https://cf.geekdo-images.com/zpJWXV6NH8layu6mp4tPKQ__original/img/qI4bslEHcc7XiTTTU3dJ9a0BRtc=/0x0/filters:format(jpeg)/pic7825275.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/zpJWXV6NH8layu6mp4tPKQ__small/img/HVoV__D4kFdAk2gL4RjoB6DUleQ=/fit-in/200x150/filters:strip_icc()/pic7825275.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-07-20 02:01:14" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="425560" subtype="boardgame" collid="136459129">
        <name sortindex="1">Strange World Above the Clouds</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/qwkSjd41H1VBfnsux1igkg__original/img/JjdPVnSnbQJHemInVNcqKmGIHf0=/0x0/filters:format(jpeg)/pic8389733.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/qwkSjd41H1VBfnsux1igkg__small/img/_IDjOAvCk662JbExANqdfdUyo_c=/fit-in/200x150/filters:strip_icc()/pic8389733.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-09-15 11:48:43" />
        <numplays>7</numplays>                            </item>
            <item objecttype="thing" objectid="170771" subtype="boardgame" collid="101871425">
        <name sortindex="1">Sword &amp; Sorcery</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/FNVnu-vB8WjyQTf63Ssvig__original/img/3zH2RQ0XlYefsMEa1Om1bnjNFS4=/0x0/filters:format(jpeg)/pic2673763.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/FNVnu-vB8WjyQTf63Ssvig__small/img/byFYJhsrFZ3Z5rd0Ef72GxmYoqM=/fit-in/200x150/filters:strip_icc()/pic2673763.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-03 16:58:10" />
        <numplays>0</numplays>            <comment>kampagne durchgespielt</comment>                </item>
            <item objecttype="thing" objectid="244733" subtype="boardgame" collid="108390268">
        <name sortindex="1">Sword &amp; Sorcery: Arcane Portal</name>
            <yearpublished>2018</yearpublished>            <image>https://cf.geekdo-images.com/p7KmBvnYPY3ZWwJlN1qsLA__original/img/Zn82NbQ1a02dRZRnPRLF7Rm6m7c=/0x0/filters:format(jpeg)/pic4162537.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/p7KmBvnYPY3ZWwJlN1qsLA__small/img/-0OPG9nEcoQOr4IBLElNO1KjBeE=/fit-in/200x150/filters:strip_icc()/pic4162537.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-07-20 01:59:23" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="255670" subtype="boardgame" collid="108390262">
        <name sortindex="1">Sword &amp; Sorcery: Darkness Falls</name>
            <yearpublished>2018</yearpublished>            <image>https://cf.geekdo-images.com/WORO4Hie3XmtZEeUJMedHA__original/img/Lwgb1Qq-cMFulZepUYA7fOonvIc=/0x0/filters:format(jpeg)/pic4192967.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/WORO4Hie3XmtZEeUJMedHA__small/img/CQyYewEIgnqRbdYsmo-4L9U0uHI=/fit-in/200x150/filters:strip_icc()/pic4192967.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-07-20 01:58:45" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="252765" subtype="boardgame" collid="108390259">
        <name sortindex="1">Sword &amp; Sorcery: Hero Pack – Morrigan Demon Huntress / Witch Huntress</name>
            <yearpublished>2018</yearpublished>            <image>https://cf.geekdo-images.com/u7Yt5N8tIUzRHIF4UWS3oQ__original/img/2zFHKPTcV7gTSEizCFBOHh57Z6A=/0x0/filters:format(jpeg)/pic4162543.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/u7Yt5N8tIUzRHIF4UWS3oQ__small/img/uO6-gYkM80EQlM3Rz5gkmUtgpuI=/fit-in/200x150/filters:strip_icc()/pic4162543.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-07-20 01:58:32" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="188349" subtype="boardgame" collid="108390239">
        <name sortindex="1">Sword &amp; Sorcery: Vastaryous&#039; Lair</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/11y-rZI5L3lk6vPtGCw0VQ__original/img/eNQCokeaja5DbGisemIqREzzVjQ=/0x0/filters:format(jpeg)/pic3597270.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/11y-rZI5L3lk6vPtGCw0VQ__small/img/E__VBDr8rySdy4nooO689CRNh9c=/fit-in/200x150/filters:strip_icc()/pic3597270.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-07-20 01:57:01" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="274795" subtype="boardgame" collid="106765540">
        <name sortindex="1">Tainted Grail: Age of Legends &amp; Last Knight Campaigns</name>
            <yearpublished>2020</yearpublished>            <image>https://cf.geekdo-images.com/cMNkeRUOqn2-uq_HmQQltg__original/img/Ru7IAbDOeW27VE6fVh-VwCRHeZw=/0x0/filters:format(jpeg)/pic5912999.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/cMNkeRUOqn2-uq_HmQQltg__small/img/PNv3sqi965YEVOPpkEAoKaiGouA=/fit-in/200x150/filters:strip_icc()/pic5912999.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-03 16:58:30" />
        <numplays>0</numplays>            <comment>kampagne durchgespielt</comment>                </item>
            <item objecttype="thing" objectid="264220" subtype="boardgame" collid="99599429">
        <name sortindex="1">Tainted Grail: The Fall of Avalon</name>
            <yearpublished>2019</yearpublished>            <image>https://cf.geekdo-images.com/aAwBzPzta4joKfFZt05hCw__original/img/e1HfD3XIvObNuGH6rq7kUSK-5aQ=/0x0/filters:format(jpeg)/pic4385726.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/aAwBzPzta4joKfFZt05hCw__small/img/zvV21ZaydrMSEbbYSNXcmw3WmfY=/fit-in/200x150/filters:strip_icc()/pic4385726.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-05 15:21:09" />
        <numplays>0</numplays>            <comment>kampagne durchgespielt</comment>                </item>
            <item objecttype="thing" objectid="440540" subtype="boardgame" collid="137215924">
        <name sortindex="1">Take Time</name>
            <yearpublished>2025</yearpublished>            <image>https://cf.geekdo-images.com/h6Bg4PZkapMB-fYfugoBrw__original/img/-lDv1CgLGKvgwJE60okL_RSYv3U=/0x0/filters:format(png)/pic8751380.png</image>
            <thumbnail>https://cf.geekdo-images.com/h6Bg4PZkapMB-fYfugoBrw__small/img/VZJFm572UpCvVpityT6iywOmlQU=/fit-in/200x150/filters:strip_icc()/pic8751380.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-11-29 14:53:40" />
        <numplays>262</numplays>                            </item>
            <item objecttype="thing" objectid="345266" subtype="boardgame" collid="109197779">
        <name sortindex="1">Tales from the Red Dragon Inn</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/k5w9qA1l16BbNxbHEv9gcA__original/img/eQQGvrFlRNseb8vQxzMj6rdVnP0=/0x0/filters:format(jpeg)/pic6388041.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/k5w9qA1l16BbNxbHEv9gcA__small/img/84xY1urq3tQ5ybFnj245fBHls_c=/fit-in/200x150/filters:strip_icc()/pic6388041.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-11-17 00:25:30" />
        <numplays>28</numplays>                            </item>
            <item objecttype="thing" objectid="118048" subtype="boardgame" collid="112745145">
        <name sortindex="1">Targi</name>
            <yearpublished>2012</yearpublished>            <image>https://cf.geekdo-images.com/wHg4fOf48cs1kw1PDOk1tQ__original/img/St4ABQhpauYiq4Mt6-f38JtLOjM=/0x0/filters:format(jpeg)/pic3958793.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/wHg4fOf48cs1kw1PDOk1tQ__small/img/6l-jqYlfECK1SVSsUs7FXUheKzQ=/fit-in/200x150/filters:strip_icc()/pic3958793.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-12-18 05:33:26" />
        <numplays>2</numplays>                            </item>
            <item objecttype="thing" objectid="269207" subtype="boardgame" collid="112902685">
        <name sortindex="5">The Taverns of Tiefenthal</name>
            <yearpublished>2019</yearpublished>            <image>https://cf.geekdo-images.com/H-AU-nhjCbaxWlWj_O-eFw__original/img/lA3TNJgLhVo-hB9rPKxr66js5j0=/0x0/filters:format(jpeg)/pic4873141.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/H-AU-nhjCbaxWlWj_O-eFw__small/img/K_cH8KNrKA2FdgvqtUMubNvoRQU=/fit-in/200x150/filters:strip_icc()/pic4873141.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-11 11:26:55" />
        <numplays>7</numplays>            <comment>-28-</comment>                </item>
            <item objecttype="thing" objectid="167791" subtype="boardgame" collid="116090089">
        <name sortindex="1">Terraforming Mars</name>
            <yearpublished>2016</yearpublished>            <image>https://cf.geekdo-images.com/wg9oOLcsKvDesSUdZQ4rxw__original/img/thIqWDnH9utKuoKVEUqveDixprI=/0x0/filters:format(jpeg)/pic3536616.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/wg9oOLcsKvDesSUdZQ4rxw__small/img/BTxqxgYay5tHJfVoJ2NF5g43_gA=/fit-in/200x150/filters:strip_icc()/pic3536616.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-03-04 01:24:55" />
        <numplays>13</numplays>                            </item>
            <item objecttype="thing" objectid="367385" subtype="boardgame" collid="99600225">
        <name sortindex="1">Tesseract</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/5l5wizLRAMBFgNUugy3-wQ__original/img/uJAVu9jnjirZpw5b4fNpYr8Fa_g=/0x0/filters:format(jpeg)/pic7017158.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/5l5wizLRAMBFgNUugy3-wQ__small/img/CmQYuJNIbIi1cDkbX8HLtmbg9Qk=/fit-in/200x150/filters:strip_icc()/pic7017158.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-08-29 15:09:42" />
        <numplays>11</numplays>            <comment>64</comment>                </item>
            <item objecttype="thing" objectid="233261" subtype="boardgame" collid="115815080">
        <name sortindex="1">Tidal Blades 2: Rise of the Unfolders</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/sDEGqjbClmyWSr1Huc9-Ow__original/img/cWH-6NjB0xNW0-X9OGVG8TG36k4=/0x0/filters:format(png)/pic6526108.png</image>
            <thumbnail>https://cf.geekdo-images.com/sDEGqjbClmyWSr1Huc9-Ow__small/img/jLvq7pKbbNHfvnzI_aCwdV5UbEE=/fit-in/200x150/filters:strip_icc()/pic6526108.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-05-10 04:19:16" />
        <numplays>24</numplays>                            </item>
            <item objecttype="thing" objectid="331787" subtype="boardgame" collid="114506873">
        <name sortindex="1">Tiny Epic Dungeons</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/rDOnDFAwGXi_fVsfp-ZCqw__original/img/lwHbQBPyDT4g7pakY-Oix1c-A5I=/0x0/filters:format(jpeg)/pic6029065.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/rDOnDFAwGXi_fVsfp-ZCqw__small/img/azj8SnpTtQHp1C7W1QoO8y9yyys=/fit-in/200x150/filters:strip_icc()/pic6029065.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-04 03:34:49" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="362986" subtype="boardgame" collid="113625743">
        <name sortindex="1">Tribes of the Wind</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/G_moxnKfgJ4w_NGmr9T6Lg__original/img/SFbumPuv8QNYm2UT5ZiHye0Zv-k=/0x0/filters:format(jpeg)/pic6871609.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/G_moxnKfgJ4w_NGmr9T6Lg__small/img/YBNaQ6O-D_ej8czfA3okABmfQjg=/fit-in/200x150/filters:strip_icc()/pic6871609.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-07-06 04:55:16" />
        <numplays>8</numplays>                            </item>
            <item objecttype="thing" objectid="329500" subtype="boardgame" collid="124325722">
        <name sortindex="1">Unconscious Mind</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/ufkAbhulnKJ7uDpi09TXOQ__original/img/hhBc0bcNj9U3t-4trByrjrO8-ro=/0x0/filters:format(jpeg)/pic7127448.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/ufkAbhulnKJ7uDpi09TXOQ__small/img/XBP7p0D1bkzDXkoOuXSiavW26Ig=/fit-in/200x150/filters:strip_icc()/pic7127448.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-09-25 01:19:43" />
        <numplays>3</numplays>                            </item>
            <item objecttype="thing" objectid="234190" subtype="boardgame" collid="110648801">
        <name sortindex="1">Unstable Unicorns</name>
            <yearpublished>2017</yearpublished>            <image>https://cf.geekdo-images.com/8_5xvpsrrX5JVzO7eBLSgw__original/img/XkKaT-quh8xGl2uHD5zULSWTpuM=/0x0/filters:format(jpeg)/pic3912914.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/8_5xvpsrrX5JVzO7eBLSgw__small/img/fV4UWCHC1ImGFUN7lcJju9K8_zo=/fit-in/200x150/filters:strip_icc()/pic3912914.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-09-28 01:28:52" />
        <numplays>2</numplays>                            </item>
            <item objecttype="thing" objectid="340325" subtype="boardgame" collid="109609674">
        <name sortindex="1">Vagrantsong</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/ZCyi6vHQz8SQtCq-OFHofg__original/img/WLJlth_yBWMlsow2qwYv5q8VfxA=/0x0/filters:format(jpeg)/pic6221727.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/ZCyi6vHQz8SQtCq-OFHofg__small/img/EczrxMUk7kzCSHaqv1luzMsFbMw=/fit-in/200x150/filters:strip_icc()/pic6221727.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-09-08 03:19:30" />
        <numplays>0</numplays>                            </item>
            <item objecttype="thing" objectid="385529" subtype="boardgame" collid="113724668">
        <name sortindex="5">The Vale of Eternity</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/yWwckUmFXuGXxp41-vFaVQ__original/img/FHotXyNFHc3pC2fcu5i8HjrVis4=/0x0/filters:format(png)/pic7461472.png</image>
            <thumbnail>https://cf.geekdo-images.com/yWwckUmFXuGXxp41-vFaVQ__small/img/ilHQqYcV-QqEkCF3GZ2XffcusrQ=/fit-in/200x150/filters:strip_icc()/pic7461472.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-09-21 16:01:19" />
        <numplays>7</numplays>                            </item>
            <item objecttype="thing" objectid="439983" subtype="boardgame" collid="139401093">
        <name sortindex="5">The Voynich Puzzle</name>
            <yearpublished>2025</yearpublished>            <image>https://cf.geekdo-images.com/uSVXNr6eWn3vh2bQfVVLwA__original/img/rQPSy9oLJvVww96KQ4XL07BomeA=/0x0/filters:format(jpeg)/pic8739904.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/uSVXNr6eWn3vh2bQfVVLwA__small/img/T0VOw22vLDgvTs3l0-xrggwXMx4=/fit-in/200x150/filters:strip_icc()/pic8739904.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-12-04 17:08:36" />
        <numplays>5</numplays>                            </item>
            <item objecttype="thing" objectid="339789" subtype="boardgame" collid="124325535">
        <name sortindex="1">Welcome to the Moon</name>
            <yearpublished>2021</yearpublished>            <image>https://cf.geekdo-images.com/eCdiHCB9OobumwaGl4dbOQ__original/img/U4DY7_OUE1XI1m1Fi0iubbf2sEI=/0x0/filters:format(png)/pic6204967.png</image>
            <thumbnail>https://cf.geekdo-images.com/eCdiHCB9OobumwaGl4dbOQ__small/img/dyaAIesMyeQWUoLRA25Dj9MhruI=/fit-in/200x150/filters:strip_icc()/pic6204967.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-10-14 00:52:09" />
        <numplays>18</numplays>                            </item>
            <item objecttype="thing" objectid="411402" subtype="boardgame" collid="137949052">
        <name sortindex="1">Whispering Woods</name>
            <yearpublished>2024</yearpublished>            <image>https://cf.geekdo-images.com/LjBpbzU1AFZ-5NayBq24CA__original/img/CJ5UHB14zLMjFREoQdm_ci6vfCk=/0x0/filters:format(jpeg)/pic8402950.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/LjBpbzU1AFZ-5NayBq24CA__small/img/6vit57F7zOQ08w2Lkrysph1OnBk=/fit-in/200x150/filters:strip_icc()/pic8402950.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-10-28 16:25:17" />
        <numplays>4</numplays>                            </item>
            <item objecttype="thing" objectid="342032" subtype="boardgame" collid="113977513">
        <name sortindex="1">Wild Tiled West</name>
            <yearpublished>2023</yearpublished>            <image>https://cf.geekdo-images.com/GGIrwKsyRa_ciMe2WPkvIw__original/img/o021l3oTNONs_nD7xq4XoKjXu9g=/0x0/filters:format(jpeg)/pic7454921.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/GGIrwKsyRa_ciMe2WPkvIw__small/img/TB-aA9yW5A7diQWSH3aQPm0nYuo=/fit-in/200x150/filters:strip_icc()/pic7454921.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-24 13:40:23" />
        <numplays>4</numplays>            <comment>-6-</comment>                </item>
            <item objecttype="thing" objectid="447174" subtype="boardgame" collid="135959734">
        <name sortindex="3">A Wild Venture</name>
            <yearpublished>2025</yearpublished>            <image>https://cf.geekdo-images.com/TMMfAqvZP3g4HdgYyCpHPQ__original/img/d5oJDK7GyI5udbJ7SdtnstdrfFc=/0x0/filters:format(png)/pic8920149.png</image>
            <thumbnail>https://cf.geekdo-images.com/TMMfAqvZP3g4HdgYyCpHPQ__small/img/nXwfLcmGgg99f-O3guvB2vXMM2Q=/fit-in/200x150/filters:strip_icc()/pic8920149.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2025-12-09 16:03:42" />
        <numplays>4</numplays>                            </item>
            <item objecttype="thing" objectid="227935" subtype="boardgame" collid="116077659">
        <name sortindex="1">Wonderland&#039;s War</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/bUbrvlY6Dw1cdb-sNrnkew__original/img/KcU-Srht_4xyLQ69ZjFcFKEOfMc=/0x0/filters:format(jpeg)/pic5188761.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/bUbrvlY6Dw1cdb-sNrnkew__small/img/Uy_FkD9PPC4Z_0a00fQHPrZPyno=/fit-in/200x150/filters:strip_icc()/pic5188761.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-12-24 16:39:21" />
        <numplays>2</numplays>                            </item>
            <item objecttype="thing" objectid="355093" subtype="boardgame" collid="119780594">
        <name sortindex="1">Woodcraft</name>
            <yearpublished>2022</yearpublished>            <image>https://cf.geekdo-images.com/S1_USNVBwzwidSpxAoKhuw__original/img/v6Siq5_xrd8ONpw_jrcWCLPjVSI=/0x0/filters:format(jpeg)/pic6940296.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/S1_USNVBwzwidSpxAoKhuw__small/img/26QtSRyUNOySkhtk6tnkzVqPx5A=/fit-in/200x150/filters:strip_icc()/pic6940296.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-05-31 12:43:40" />
        <numplays>7</numplays>                            </item>
            <item objecttype="thing" objectid="176189" subtype="boardgame" collid="99599474">
        <name sortindex="1">Zombicide: Black Plague</name>
            <yearpublished>2015</yearpublished>            <image>https://cf.geekdo-images.com/kVHuMBxmathfnq42XINBQg__original/img/Xak18xf2xfSedYFS9-ZKwjSk7yc=/0x0/filters:format(jpeg)/pic2482309.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/kVHuMBxmathfnq42XINBQg__small/img/u5Fuj4SwZhXElCO3VmrNKkAeXX4=/fit-in/200x150/filters:strip_icc()/pic2482309.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2026-01-02 08:08:45" />
        <numplays>6</numplays>            <comment>kampagne durcgespielt

    6 würfel</comment>                </item>
            <item objecttype="thing" objectid="178485" subtype="boardgame" collid="106765534">
        <name sortindex="1">Zombicide: Black Plague – Wulfsburg</name>
            <yearpublished>2016</yearpublished>            <image>https://cf.geekdo-images.com/M-5-DGGKPOh2bARbckdYvg__original/img/a214HAPxRy-bNoprcLaS9D929IM=/0x0/filters:format(png)/pic8861885.png</image>
            <thumbnail>https://cf.geekdo-images.com/M-5-DGGKPOh2bARbckdYvg__small/img/jtH6opRfv6We3u8yLkFl1ggPUOw=/fit-in/200x150/filters:strip_icc()/pic8861885.png</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2024-01-03 16:59:13" />
        <numplays>0</numplays>            <comment>kampagne durchgespielt</comment>                </item>
            <item objecttype="thing" objectid="228719" subtype="boardgame" collid="108390178">
        <name sortindex="1">Zombicide: Friends and Foes</name>
            <yearpublished>2018</yearpublished>            <image>https://cf.geekdo-images.com/39MT__DUvcSix0AT91724A__original/img/xaI2OD5MYzcYHb5wGUIsslfhM8E=/0x0/filters:format(jpeg)/pic7528312.jpg</image>
            <thumbnail>https://cf.geekdo-images.com/39MT__DUvcSix0AT91724A__small/img/xwOEBfYfAg-gdYK6BKoHSr05rtY=/fit-in/200x150/filters:strip_icc()/pic7528312.jpg</thumbnail>
                <status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0"  preordered="0" lastmodified="2023-07-20 01:52:35" />
        <numplays>0</numplays>                            </item>
            
    </items>
    """
}
