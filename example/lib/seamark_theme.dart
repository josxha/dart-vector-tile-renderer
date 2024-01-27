const Map<String, dynamic> seamarkTheme = {
  "version": 8,
  "name": "Seamarks",
  "metadata": {
    "maputnik:license": "https://github.com/maputnik/osm-liberty/blob/gh-pages/LICENSE.md",
    "maputnik:renderer": "mbgljs",
    "openmaptiles:version": "3.x"
  },
  "sources": {
    "seamarksdach": {
      "type": "vector",
      "tiles": [
        "https://pmtiles.bodensee-navigator.com/seamarks-dach/{z}/{x}/{y}.mvt"
      ],
      "minZoom": 0,
      "maxZoom": 14,
      "maxzoom": 9
    }
  },
  "sprite": "https://maputnik.github.io/osm-liberty/sprites/osm-liberty",
  "glyphs": "https://orangemug.github.io/font-glyphs/glyphs/{fontstack}/{range}.pbf",
  "layers": [
    {
      "id": "sea_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "filter": ["all", ["==", "seamark:type", "sea_area"]],
      "layout": {"visibility": "visible"},
      "paint": {"fill-color": "rgba(0, 164, 255, 0.1)"}
    },
    {
      "id": "restricted_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "filter": ["all", ["==", "seamark:type", "restricted_area"]],
      "layout": {"visibility": "visible"},
      "paint": {"fill-color": "rgba(255, 0, 4, 0.1)"}
    },
    {
      "id": "restricted_area_label",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "filter": ["all", ["==", "seamark:type", "restricted_area"]],
      "layout": {
        "icon-image": "{class}",
        "text-anchor": "center",
        "text-field": "{seamark:restricted_area:category}",
        "text-font": ["Roboto Light"],
        "text-max-width": 9,
        "visibility": "visible"
      },
      "paint": {
        "text-color": "rgba(0, 0, 0, 1)",
        "text-halo-blur": 0.5,
        "text-halo-width": 1
      }
    },
    {
      "id": "pile",
      "type": "circle",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "pile"]],
      "layout": {"visibility": "visible"},
      "paint": {"circle-radius": 3, "circle-color": "rgba(0, 0, 0, 1)"}
    },
    {
      "id": "mooring",
      "type": "circle",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "mooring"]],
      "layout": {"visibility": "visible"},
      "paint": {"circle-radius": 2, "circle-color": "rgba(0, 0, 0, 1)"}
    },
    {
      "id": "beacon_lateral",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "filter": ["all", ["==", "seamark:type", "beacon_lateral"]],
      "layout": {
        "icon-image": "{class}",
        "text-anchor": "left",
        "text-field": "beacon_lateral {seamark:beacon_lateral:colour}",
        "text-font": ["Roboto Light"],
        "text-max-width": 9,
        "text-offset": [0.9, 0],
        "visibility": "visible"
      },
      "paint": {
        "text-color": "rgba(0, 0, 0, 1)",
        "text-halo-blur": 0.5,
        "text-halo-color": "#ffffff",
        "text-halo-width": 1
      }
    },
    {
      "id": "beacon_special_purpose",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "filter": ["all", ["==", "seamark:type", "beacon_special_purpose"]],
      "layout": {
        "icon-image": "{class}",
        "text-anchor": "left",
        "text-field": "{seamark:name}",
        "text-font": ["Roboto Light"],
        "text-max-width": 9,
        "text-offset": [0.9, 0],
        "visibility": "visible"
      },
      "paint": {
        "text-color": "rgba(0, 0, 0, 1)",
        "text-halo-blur": 0.5,
        "text-halo-color": "#ffffff",
        "text-halo-width": 1
      }
    },
    {
      "id": "buoy_isolated_danger",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "filter": ["all", ["==", "seamark:type", "buoy_isolated_danger"]],
      "layout": {
        "text-font": ["Roboto Light"],
        "text-field": "buoy_isolated_danger",
        "symbol-placement": "point",
        "visibility": "none"
      },
      "paint": {"text-color": "rgba(255, 0, 0, 1)"}
    },
    {
      "id": "buoy_cardinal",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "filter": ["all", ["==", "seamark:type", "buoy_cardinal"]],
      "layout": {
        "text-font": ["Roboto Light"],
        "text-field": "buoy_cardinal {seamark:buoy_cardinal:category}",
        "symbol-placement": "point"
      }
    },
    {
      "id": "buoy_lateral",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "filter": ["all", ["==", "seamark:type", "buoy_lateral"]],
      "layout": {
        "text-font": ["Roboto Light"],
        "text-field": "buoy_lateral {seamark:buoy_lateral:category}",
        "symbol-placement": "point"
      }
    },
    {
      "id": "buoy_special_purpose",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "filter": ["all", ["==", "seamark:type", "buoy_special_purpose"]],
      "layout": {
        "text-font": ["Roboto Light"],
        "text-field": "buoy_special_purpose {seamark:name}",
        "symbol-placement": "point"
      }
    },
    {
      "id": "anchorage",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "anchorage"]],
      "layout": {
        "text-field": "Ankerplatz {seamark:name}",
        "text-font": ["Roboto Light"]
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)"}
    },
    {
      "id": "obstruction",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "obstruction"]],
      "layout": {
        "text-field": "Hindernis {seamark:name}",
        "text-font": ["Roboto Light"]
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)"}
    },
    {
      "id": "building",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "building"]],
      "layout": {
        "text-field": "{seamark:building:function}",
        "text-font": ["Roboto Light"]
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)"}
    },
    {
      "id": "small_craft_facility",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "small_craft_facility"]],
      "layout": {
        "text-field": "{seamark:small_craft_facility:category}",
        "text-font": ["Roboto Light"],
        "visibility": "visible"
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)"}
    },
    {
      "id": "rock",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "rock"]],
      "layout": {
        "text-field": "Untiefe {name}",
        "text-font": ["Roboto Light Italic"]
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)"}
    },
    {
      "id": "landmark",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "landmark"]],
      "layout": {
        "text-field": "{description}",
        "text-font": ["Roboto Light Italic"]
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)"}
    },
    {
      "id": "bridge",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "bridge"]],
      "layout": {
        "text-field": "Höhe {seamark:bridge:clearance_height}m",
        "text-font": ["Roboto Light Italic"]
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)"}
    },
    {
      "id": "wreck",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "wreck"]],
      "layout": {"text-field": "{name}", "text-font": ["Roboto Light Italic"]},
      "paint": {"text-color": "rgba(0, 0, 0, 1)"}
    },
    {
      "id": "light_major",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "light_major"]],
      "layout": {
        "text-field": "Licht (groß, {seamark:light:colour})",
        "text-font": ["Roboto Light Italic"],
        "visibility": "visible"
      }
    },
    {
      "id": "light_minor",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "light_minor"]],
      "layout": {
        "text-field": "Licht (klein, {seamark:light:colour})",
        "text-font": ["Roboto Light Italic"],
        "visibility": "visible"
      }
    },
    {
      "id": "signal_station_warning",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "signal_station_warning"]],
      "layout": {
        "text-field": "Warnstation {seamark:signal_station_warning:category}",
        "text-font": ["Roboto Light Italic"],
        "visibility": "visible"
      }
    },
    {
      "id": "notice",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "notice"]],
      "layout": {
        "text-field": "Verbot ({seamark:notice:category})",
        "text-font": ["Roboto Light Italic"],
        "visibility": "none"
      },
      "paint": {"text-color": "#FF0000"}
    },
    {
      "id": "berth",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "berth"]],
      "layout": {
        "text-field": "{seamark:name}",
        "text-font": ["Roboto Light Italic"]
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)"}
    },
    {
      "id": "harbour",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 0,
      "filter": ["all", ["==", "seamark:type", "harbour"]],
      "layout": {
        "text-field": "{seamark:name} {seamark:harbour:category}",
        "text-font": ["Roboto Light Italic"]
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)"}
    },
    {
      "id": "debug_all_labels",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "filter": [
        "none",
        [
          "in",
          "seamark:type",
          "buoy_cardinal",
          "buoy_isolated_danger",
          "beacon_lateral",
          "buoy_lateral",
          "landmark",
          "obstruction",
          "restricted_area",
          "bridge",
          "berth",
          "rock",
          "signal_station_warning",
          "light_major",
          "light_minor",
          "sea_area",
          "buoy_special_purpose",
          "notice",
          "harbour",
          "anchorage",
          "building",
          "small_craft_facility",
          "wreck",
          "pile",
          "mooring",
          "beacon_special_purpose",
          "pile",
          "mooring"
        ]
      ],
      "layout": {
        "text-field": "{seamark:type}",
        "visibility": "visible",
        "text-font": ["Roboto Condensed Italic"]
      },
      "paint": {
        "text-color": "rgba(250, 0, 0, 1)",
        "text-halo-color": "#ffffff"
      }
    }
  ],
  "id": "osm-liberty",
  "owner": "Joscha Eckert"
};
