import ballerina/http;

//import ballerina/log;

public type Campaign record {|
    string id;
    string createdAt;
    string Company;
    string CampaignName;
    string Advertiser;
|};

table<Campaign> campaigns = table [
    {"createdAt": "2023-10-22T07:29:04.094Z", "Company": "Wyman, Moen and Pagac", "CampaignName": "Pizza", "Advertiser": "Corine29", "id": "1"},
    {"createdAt": "2023-10-22T08:01:17.857Z", "Company": "Price Inc", "CampaignName": "Bacon", "Advertiser": "Philip_Larson85", "id": "2"},
    {"createdAt": "2023-10-22T10:41:45.634Z", "Company": "Howell Inc", "CampaignName": "Keyboard", "Advertiser": "Syble.OKon", "id": "3"},
    {"createdAt": "2023-10-22T14:08:31.438Z", "Company": "Daniel - Weimann", "CampaignName": "Chicken", "Advertiser": "Liana.Kuphal", "id": "4"},
    {"createdAt": "2023-10-22T10:55:31.350Z", "Company": "Jerde, Simonis and Murazik", "CampaignName": "Chicken", "Advertiser": "Oda_OKon", "id": "5"},
    {"createdAt": "2023-10-22T04:01:58.271Z", "Company": "O'Hara and Sons", "CampaignName": "Fish", "Advertiser": "Dave.Beahan25", "id": "6"},
    {"createdAt": "2023-10-22T18:28:38.691Z", "Company": "Lesch Inc", "CampaignName": "Chair", "Advertiser": "Patience.Daugherty8", "id": "7"},
    {"createdAt": "2023-10-22T12:48:22.187Z", "Company": "Quigley LLC", "CampaignName": "Gloves", "Advertiser": "Rowena_Schneider", "id": "8"},
    {"createdAt": "2023-10-22T11:49:53.800Z", "Company": "Pagac, Weber and Hessel", "CampaignName": "Pants", "Advertiser": "Lamont_Howe", "id": "9"},
    {"createdAt": "2023-10-22T18:50:30.846Z", "Company": "Carroll Inc", "CampaignName": "Chips", "Advertiser": "Nyasia_Rogahn21", "id": "10"},
    {"createdAt": "2023-10-22T10:29:49.238Z", "Company": "McGlynn - Lueilwitz", "CampaignName": "Chicken", "Advertiser": "Izabella_Lueilwitz", "id": "11"},
    {"createdAt": "2023-10-22T13:15:22.102Z", "Company": "Hammes and Sons", "CampaignName": "Mouse", "Advertiser": "Johnny_Gibson71", "id": "12"},
    {"createdAt": "2023-10-22T11:21:48.865Z", "Company": "Rutherford, McGlynn and Dach", "CampaignName": "Sausages", "Advertiser": "Jordi_Hintz64", "id": "13"},
    {"createdAt": "2023-10-22T23:50:32.748Z", "Company": "Schneider - Frami", "CampaignName": "Sausages", "Advertiser": "Javon58", "id": "14"},
    {"createdAt": "2023-10-23T00:20:34.497Z", "Company": "Deckow, Bins and Murazik", "CampaignName": "Chair", "Advertiser": "Brooke39", "id": "15"},
    {"createdAt": "2023-10-22T16:29:09.832Z", "Company": "Weber - Flatley", "CampaignName": "Gloves", "Advertiser": "Beaulah.Spencer72", "id": "16"},
    {"createdAt": "2023-10-22T18:12:36.090Z", "Company": "D'Amore LLC", "CampaignName": "Car", "Advertiser": "Perry.Maggio", "id": "17"},
    {"createdAt": "2023-10-22T20:26:09.628Z", "Company": "Powlowski, Rempel and Watsica", "CampaignName": "Salad", "Advertiser": "Nicholaus.Tremblay53", "id": "18"},
    {"createdAt": "2023-10-22T08:33:23.688Z", "Company": "Satterfield Inc", "CampaignName": "Soap", "Advertiser": "Zola.Kihn", "id": "19"},
    {"createdAt": "2023-10-22T03:52:40.998Z", "Company": "Steuber LLC", "CampaignName": "Hat", "Advertiser": "Gerald_White89", "id": "20"},
    {"createdAt": "2023-10-23T02:03:50.098Z", "Company": "Wiza, Hodkiewicz and Pfannerstill", "CampaignName": "Gloves", "Advertiser": "Deron_Predovic57", "id": "21"},
    {"createdAt": "2023-10-22T21:05:37.745Z", "Company": "Dach Inc", "CampaignName": "Shirt", "Advertiser": "Erick.Boehm85", "id": "22"},
    {"createdAt": "2023-10-22T12:37:35.559Z", "Company": "Marquardt - Padberg", "CampaignName": "Pizza", "Advertiser": "Jesus.Nienow", "id": "23"},
    {"createdAt": "2023-10-22T05:49:00.401Z", "Company": "Wehner Inc", "CampaignName": "Gloves", "Advertiser": "Monty_Carroll", "id": "24"},
    {"createdAt": "2023-10-23T00:06:14.998Z", "Company": "Schaden LLC", "CampaignName": "Tuna", "Advertiser": "Michaela.Bradtke37", "id": "25"},
    {"createdAt": "2023-10-22T23:39:59.672Z", "Company": "Tromp Inc", "CampaignName": "Shoes", "Advertiser": "Brennan_Kertzmann4", "id": "26"},
    {"createdAt": "2023-10-23T01:31:23.521Z", "Company": "Schmeler, Hamill and Huels", "CampaignName": "Shoes", "Advertiser": "Sherman40", "id": "27"},
    {"createdAt": "2023-10-22T09:10:59.303Z", "Company": "Toy - Torphy", "CampaignName": "Shoes", "Advertiser": "Orin_Zieme", "id": "28"},
    {"createdAt": "2023-10-22T05:54:54.460Z", "Company": "Krajcik - Kling", "CampaignName": "Keyboard", "Advertiser": "Shania11", "id": "29"},
    {"createdAt": "2023-10-23T01:18:53.647Z", "Company": "Bins, Mann and Rau", "CampaignName": "Chair", "Advertiser": "Arvel39", "id": "30"},
    {"createdAt": "2023-10-22T09:48:36.161Z", "Company": "Watsica - Deckow", "CampaignName": "Bike", "Advertiser": "Tessie43", "id": "31"},
    {"createdAt": "2023-10-22T10:49:45.150Z", "Company": "Dare, Howe and Kuhic", "CampaignName": "Shoes", "Advertiser": "Weldon.Frami", "id": "32"},
    {"createdAt": "2023-10-22T10:22:40.313Z", "Company": "Legros Inc", "CampaignName": "Table", "Advertiser": "Brain34", "id": "33"},
    {"createdAt": "2023-10-22T07:37:16.041Z", "Company": "Mitchell - Baumbach", "CampaignName": "Soap", "Advertiser": "Florine.Brakus26", "id": "34"},
    {"createdAt": "2023-10-22T23:51:00.908Z", "Company": "Gerhold Inc", "CampaignName": "Bike", "Advertiser": "Marguerite_Gulgowski", "id": "35"},
    {"createdAt": "2023-10-22T14:51:40.465Z", "Company": "Schowalter - Von", "CampaignName": "Mouse", "Advertiser": "Max27", "id": "36"},
    {"createdAt": "2023-10-22T22:23:50.891Z", "Company": "Green - Mueller", "CampaignName": "Chicken", "Advertiser": "Kayley.Rogahn31", "id": "37"},
    {"createdAt": "2023-10-22T18:53:13.482Z", "Company": "Leannon and Sons", "CampaignName": "Tuna", "Advertiser": "Judy33", "id": "38"},
    {"createdAt": "2023-10-22T04:01:18.265Z", "Company": "McClure, Gutkowski and Zboncak", "CampaignName": "Table", "Advertiser": "Rylee.Effertz", "id": "39"},
    {"createdAt": "2023-10-22T18:05:13.247Z", "Company": "Boyer, DuBuque and Lowe", "CampaignName": "Mouse", "Advertiser": "Annabel.Walker", "id": "40"},
    {"createdAt": "2023-10-22T20:47:56.588Z", "Company": "Nader - Botsford", "CampaignName": "Cheese", "Advertiser": "Keely.DuBuque25", "id": "41"},
    {"createdAt": "2023-10-22T10:44:24.156Z", "Company": "Sawayn - Gulgowski", "CampaignName": "Table", "Advertiser": "Herminio63", "id": "42"},
    {"createdAt": "2023-10-22T19:17:07.203Z", "Company": "Rogahn and Sons", "CampaignName": "Ball", "Advertiser": "Roma.Lockman87", "id": "43"},
    {"createdAt": "2023-10-22T23:58:34.422Z", "Company": "Hauck, Tillman and Heller", "CampaignName": "Salad", "Advertiser": "Andre_Botsford", "id": "44"},
    {"createdAt": "2023-10-22T23:33:45.091Z", "Company": "MacGyver Group", "CampaignName": "Towels", "Advertiser": "Alda_Emard", "id": "45"},
    {"createdAt": "2023-10-22T04:29:03.960Z", "Company": "Waters Inc", "CampaignName": "Fish", "Advertiser": "Santino_Rohan", "id": "46"},
    {"createdAt": "2023-10-23T01:00:58.920Z", "Company": "Spinka and Sons", "CampaignName": "Shoes", "Advertiser": "Vilma.Hoeger", "id": "47"},
    {"createdAt": "2023-10-23T01:31:02.214Z", "Company": "Toy LLC", "CampaignName": "Gloves", "Advertiser": "Lupe.Brekke", "id": "48"},
    {"createdAt": "2023-10-22T06:32:04.269Z", "Company": "Ebert - Carroll", "CampaignName": "Pizza", "Advertiser": "Isabell_Friesen", "id": "49"},
    {"createdAt": "2023-10-23T01:27:59.591Z", "Company": "Lubowitz Inc", "CampaignName": "Table", "Advertiser": "Ransom_King", "id": "50"},
    {"createdAt": "2023-10-22T19:05:52.834Z", "Company": "Mayer, Hirthe and Olson", "CampaignName": "Shoes", "Advertiser": "Jada_Carter", "id": "51"},
    {"createdAt": "2023-10-22T14:21:00.082Z", "Company": "Bashirian - Hamill", "CampaignName": "Salad", "Advertiser": "Thalia_Raynor", "id": "52"},
    {"createdAt": "2023-10-22T07:47:24.774Z", "Company": "Heidenreich Group", "CampaignName": "Gloves", "Advertiser": "Randal37", "id": "53"},
    {"createdAt": "2023-10-22T19:17:57.996Z", "Company": "Thiel - Bartoletti", "CampaignName": "Table", "Advertiser": "Rahsaan.Smith69", "id": "54"},
    {"createdAt": "2023-10-22T11:16:36.060Z", "Company": "Reichert - Cole", "CampaignName": "Fish", "Advertiser": "Quinn7", "id": "55"},
    {"createdAt": "2023-10-22T14:34:16.359Z", "Company": "Casper - Bahringer", "CampaignName": "Gloves", "Advertiser": "Fae_Hahn", "id": "56"},
    {"createdAt": "2023-10-22T10:44:05.741Z", "Company": "Langosh, Zieme and Jakubowski", "CampaignName": "Keyboard", "Advertiser": "Greyson53", "id": "57"},
    {"createdAt": "2023-10-22T20:02:00.327Z", "Company": "Kertzmann, Monahan and Brown", "CampaignName": "Keyboard", "Advertiser": "Gerhard17", "id": "58"},
    {"createdAt": "2023-10-22T06:20:26.107Z", "Company": "Crona and Sons", "CampaignName": "Sausages", "Advertiser": "Kelli_Bauch14", "id": "59"},
    {"createdAt": "2023-10-22T16:33:36.070Z", "Company": "Roob, Altenwerth and Sporer", "CampaignName": "Towels", "Advertiser": "Orpha_Lang41", "id": "60"},
    {"createdAt": "2023-10-22T05:35:28.374Z", "Company": "Gutkowski, Hudson and Denesik", "CampaignName": "Mouse", "Advertiser": "Boyd_Haley36", "id": "61"},
    {"createdAt": "2023-10-22T05:39:25.605Z", "Company": "Nader, Vandervort and Hilpert", "CampaignName": "Bacon", "Advertiser": "Korey_Denesik8", "id": "62"},
    {"createdAt": "2023-10-23T02:14:11.905Z", "Company": "Ziemann - Larkin", "CampaignName": "Hat", "Advertiser": "Jordane_Block", "id": "63"},
    {"createdAt": "2023-10-22T22:18:17.644Z", "Company": "Becker, Koepp and Reichert", "CampaignName": "Chair", "Advertiser": "Serena27", "id": "64"},
    {"createdAt": "2023-10-22T11:31:45.462Z", "Company": "Dietrich - Boyle", "CampaignName": "Ball", "Advertiser": "Dejah_Price10", "id": "65"},
    {"createdAt": "2023-10-22T03:10:47.978Z", "Company": "Funk, Kreiger and Bayer", "CampaignName": "Chips", "Advertiser": "Lurline1", "id": "66"},
    {"createdAt": "2023-10-22T08:23:40.818Z", "Company": "Lehner Group", "CampaignName": "Sausages", "Advertiser": "Erin89", "id": "67"},
    {"createdAt": "2023-10-22T12:16:45.088Z", "Company": "Stehr LLC", "CampaignName": "Fish", "Advertiser": "Conor.Smitham", "id": "68"},
    {"createdAt": "2023-10-22T05:49:01.138Z", "Company": "Ward LLC", "CampaignName": "Mouse", "Advertiser": "Estefania.Romaguera", "id": "69"},
    {"createdAt": "2023-10-23T00:58:16.517Z", "Company": "Adams - Schoen", "CampaignName": "Shoes", "Advertiser": "Mikayla10", "id": "70"},
    {"createdAt": "2023-10-22T03:35:15.972Z", "Company": "Lind - Towne", "CampaignName": "Cheese", "Advertiser": "Dee_Baumbach15", "id": "71"},
    {"createdAt": "2023-10-22T14:16:38.899Z", "Company": "Denesik and Sons", "CampaignName": "Cheese", "Advertiser": "Sophia96", "id": "72"},
    {"createdAt": "2023-10-22T15:26:34.305Z", "Company": "Christiansen - Rippin", "CampaignName": "Gloves", "Advertiser": "Paul.McDermott", "id": "73"},
    {"createdAt": "2023-10-22T10:10:13.325Z", "Company": "Carroll, Mann and Kassulke", "CampaignName": "Pants", "Advertiser": "Jasper.Walter26", "id": "74"},
    {"createdAt": "2023-10-23T00:00:54.822Z", "Company": "Tillman LLC", "CampaignName": "Ball", "Advertiser": "Gretchen_Kutch", "id": "75"},
    {"createdAt": "2023-10-22T18:53:16.885Z", "Company": "Raynor, Mosciski and Predovic", "CampaignName": "Hat", "Advertiser": "Camilla35", "id": "76"}
];

service /bionic on new http:Listener(8080) {

    // resource function get campaigns() returns Campaign[]|http:Ok|http:InternalServerError|error? {
    //     Campaign[] campaignList = from Campaign campaign in campaigns
    //         select campaign;
    //     return campaignList;

    // }
    resource function get campaigns(string? id) returns Campaign|Campaign[]|http:Ok|http:InternalServerError|http:NotFound|error? {
        if id == () {
            Campaign[] campaignList = from Campaign campaign in campaigns
                select campaign;
            return campaignList;
        }

        Campaign[] selectedCampaign = from Campaign campaign in campaigns
            where campaign.id == id
            select campaign;
        if (selectedCampaign.length() == 0) {
            return http:NOT_FOUND;
        }

        return selectedCampaign[0];
    }

    resource function post campaigns(@http:Payload Campaign campaign) returns json|http:Ok|http:InternalServerError|error? {
        campaign.id = (campaigns.length() + 1).toString();
        campaigns.add(campaign);
        return campaign;
    }

    resource function put campaigns/[string id](@http:Payload Campaign campaign) returns json|http:Ok|http:NotFound|http:InternalServerError|error? {
        Campaign[] selectedCampaign = from Campaign existingCampaign in campaigns
            where existingCampaign.id == id
            select existingCampaign;
        if (selectedCampaign.length() == 0) {
            return http:NOT_FOUND;
        }
        selectedCampaign[0].Advertiser = campaign.Advertiser;
        selectedCampaign[0].CampaignName = campaign.CampaignName;
        selectedCampaign[0].Company = campaign.Company;
        selectedCampaign[0].createdAt = campaign.createdAt;

        return selectedCampaign[0];
    }

}
