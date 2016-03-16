# Anne's Tools

## Color Picker

### Concept & Sketch
```
Concept Color Picker

Met de "Air Cloud Color Picker" app (te downloaden in de Appstore) kan je kleur uit luchten/ wolken halen op basis van een foto die je maakt of hebt gemaakt. De kleurwaardes RGB, CMYK en PMS kun je vervolgens delen naar jezelf of naar anderen via mail of whatsapp.  

```

### Prototype

[Prototype](Prototype_Color_Picker.pdf)

## Your Own Tool

### Concept

```
Concept Own Tool ("WikiCounter")

Met de “WikiCounter” app kan je zien welke artikelen op Wikipedia de laagste page view statistieken hebben. Door bijvoorbeeld het getal 5 in te voeren (het getal moet tussen de 0 en de 100 zijn) kan je zien hoeveel artikelen er 5 bekeken zijn, in dat jaar. Volgens kan je de lijst, met de URL’s van de artikelen downloaden als txt. bestand.  

```

### Sketch

```
String[ ] articles = {""Aabach", "Aabel", "Aabye", "Aang", "Aantjes","A&D_Company","Alberta_Park", "1018_Arnolda""};

void setup() {

    for (int i = 0; i < articles.length; i++) {

        String article = articles[i];

        String start = "20160101"; 
        String end = "20170101"; 

        // documentation: https://wikimedia.org/api/rest_v1/?doc#!/Pageviews_data/get_metrics_pageviews_per_article_project_access_agent_article_granularity_start_end
        String query = "http://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/en.wikipedia/all-access/all-agents/"+article+"/daily/"+start+"/"+end;

        JSONObject json = loadJSONObject(query);
        JSONArray items = json.getJSONArray("items");

        int totalviews = 0;

        for (int j = 0; j < items.size(); j++) {
            JSONObject item = items.getJSONObject(j);
            int views = item.getInt("views");
            totalviews += views;
        }

        println(article+" "+totalviews);
    }
}

```

### Demo

[Demo](Demo_WikiCounter.pdf)

### How to install and use

[How to use](Use_WikiCounter_.mp4)

## Other Homework

