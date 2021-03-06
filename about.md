### About this data portal
This portal is maintained by Open Justice Baltimore to make it easier to search Baltimore's data portal (and others
like it). The portal code was originally written by Anthony Moser.

It's a fairly simple Python app that uses sodapy to access the data portal and Streamlit to create this web interface. You can check out the repo at <http://www.github.com/openjusticebaltimore/better_data_portal>


### Notes on usage
1. **Maps are excluded.** The app automatically excludes data sets that are categorized as maps, because keyword search doesn't work on maps.
2. **You may get some partial matches.** Keywords are automatically treated as having quotes around them (e.g. My Search will be treated as "My Search").
Despite this, some data sets will include partial matches, which can be false positives. For example, a search
 for "4010 S Damen" returns Divvy bike rides with the user_id "4010".  
3. **I don't store anything.** None of your searches are logged or results are stored by this application.
4. **Datasets are grouped automatically.** To make the list of selectable data sets more managable, they are grouped by
whatever comes before the first dash. For example, "311 Service Requests - Dashboard" and "311 Service Requests - Abandoned Vehicles - No Duplicates"
will be combined into a single checkbox for "311 Service Requests." When you choose a group, you will search all sets
in the group, which will be individually listed in your "Selected Data Sets."
5. **It's okay to just search everything.** Part of the power of this approach is that you don't know where something
will turn up.
6. **Leave off street designation (RD, AVE, etc)**. Some datasets store the address separately from the street type. For
To avoid accidentally excluding results, "2055 W Pershing" is better than "2055 W Pershing RD"


### Where can I find Socrata data portals?
Many Socrata powered datasets can be found at <http://www.opendatanetwork.com> Just search for the place or topic and
look for the "datasets" results.

  