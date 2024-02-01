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
  "sprite": "https://s3.bodensee-navigator.com/test/maps/seamark-sprites/sprites",
  "glyphs": "https://orangemug.github.io/font-glyphs/glyphs/{fontstack}/{range}.pbf",
  "layers": [
    {
      "id": "anchorage_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "anchorage"]],
      "layout": {"visibility": "visible"},
      "paint": {"fill-color": "rgba(0, 164, 255, 0.04)"}
    },
    {
      "id": "anchorage",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "anchorage"]],
      "layout": {
        "text-field": "Ankerplatz {seamark:name}",
        "text-font": ["Roboto Light"],
        "text-pitch-alignment": "auto",
        "text-anchor": "center",
        "text-justify": "auto",
        "text-transform": "none",
        "icon-size": 2,
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-ignore-placement": true,
        "icon-allow-overlap": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "anchor_berth_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "anchor_berth"]],
      "paint": {"fill-color": "rgba(0, 164, 255, 0.04)"}
    },
    {
      "id": "anchor_berth",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "anchor_berth"]],
      "layout": {
        "visibility": "visible",
        "text-font": ["Roboto Light"],
        "text-field": "Anchor Berth",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-image": "AnchorBerth"
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "beacon_cardinal",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "beacon_cardinal"]],
      "layout": {
        "text-anchor": "left",
        "text-field": "{seamark:name}",
        "text-font": ["Roboto Light"],
        "text-max-width": 9,
        "visibility": "visible",
        "icon-image": "Beacon_Cardinal",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {
        "text-color": "rgba(0, 0, 0, 1)",
        "text-halo-blur": 0.5,
        "text-halo-color": "#ffffff",
        "text-halo-width": 1,
        "icon-opacity": 1
      }
    },
    {
      "id": "beacon_isolated_danger",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "beacon_isolated_danger"]],
      "layout": {
        "text-anchor": "left",
        "text-field": "{seamark:name}",
        "text-font": ["Roboto Light"],
        "text-max-width": 9,
        "visibility": "visible",
        "icon-image": "Beacon_Isolated_Danger",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {
        "text-color": "rgba(0, 0, 0, 1)",
        "text-halo-blur": 0.5,
        "text-halo-color": "#ffffff",
        "text-halo-width": 1,
        "icon-opacity": 1
      }
    },
    {
      "id": "beacon_lateral",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "beacon_lateral"]],
      "layout": {
        "text-anchor": "left",
        "text-field": "{seamark:name}",
        "text-font": ["Roboto Light"],
        "text-max-width": 9,
        "visibility": "visible",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {
        "text-color": "rgba(0, 0, 0, 1)",
        "text-halo-blur": 0.5,
        "text-halo-color": "#ffffff",
        "text-halo-width": 1,
        "icon-opacity": 1
      }
    },
    {
      "id": "beacon_safe_water",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "beacon_safe_water"]],
      "layout": {
        "icon-image": "Beacon_Safe_Water",
        "text-anchor": "left",
        "text-field": "{seamark:name}",
        "text-font": ["Roboto Light"],
        "text-max-width": 9,
        "visibility": "visible",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-ignore-placement": true,
        "icon-allow-overlap": true
      },
      "paint": {
        "text-color": "rgba(0, 0, 0, 1)",
        "text-halo-blur": 0.5,
        "text-halo-color": "#ffffff",
        "text-halo-width": 1,
        "icon-opacity": 1
      }
    },
    {
      "id": "beacon_special_purpose",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "beacon_special_purpose"]],
      "layout": {
        "text-anchor": "left",
        "text-field": "{seamark:name}",
        "text-font": ["Roboto Light"],
        "text-max-width": 9,
        "visibility": "visible",
        "icon-image": "Beacon_Special_Purpose",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-ignore-placement": true,
        "icon-allow-overlap": true
      },
      "paint": {
        "text-color": "rgba(0, 0, 0, 1)",
        "text-halo-blur": 0.5,
        "text-halo-color": "#ffffff",
        "text-halo-width": 1,
        "icon-opacity": 1
      }
    },
    {
      "id": "berth_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "berth"]],
      "paint": {"fill-color": "rgba(0, 13, 255, 0.1)"}
    },
    {
      "id": "berth_line",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "berth"]],
      "paint": {"line-color": "rgba(0, 13, 255, 1)"}
    },
    {
      "id": "berth",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "berth"]],
      "layout": {
        "text-field": "{seamark:name}",
        "text-font": ["Roboto Light Italic"],
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-ignore-placement": true,
        "icon-allow-overlap": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "bridge_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "bridge"]]
    },
    {
      "id": "bridge_line",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "bridge"]]
    },
    {
      "id": "bridge",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "bridge"]],
      "layout": {
        "text-field": "Höhe {seamark:bridge:clearance_height}m",
        "text-font": ["Roboto Light Italic"],
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true,
        "icon-image": "Seamark_fixed-bridge",
        "icon-text-fit": "none"
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "bunker_station_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "bunker_station"]]
    },
    {
      "id": "bunker_station",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "bunker_station"]],
      "layout": {
        "text-field": "Bunker Station",
        "text-font": ["Roboto Light"],
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-ignore-placement": true,
        "icon-allow-overlap": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "building_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "building"]],
      "paint": {"fill-color": "rgba(183, 183, 183, 0.26)"}
    },
    {
      "id": "building",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "building"]],
      "layout": {
        "text-field": "{seamark:building:function}",
        "text-font": ["Roboto Light"],
        "icon-image": "",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "buoy_cardinal",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "buoy_cardinal"]],
      "layout": {
        "text-font": ["Roboto Light"],
        "text-field": "{seamark:name}",
        "symbol-placement": "point",
        "icon-image": "Buoy_Cardinal",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "buoy_installation",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "buoy_installation"]],
      "layout": {
        "text-font": ["Roboto Light"],
        "text-field": "{seamark:name}",
        "symbol-placement": "point",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "buoy_isolated_danger",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "buoy_isolated_danger"]],
      "layout": {
        "text-font": ["Roboto Light"],
        "text-field": "{seamark:name}",
        "symbol-placement": "point",
        "visibility": "visible",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(255, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "buoy_lateral",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "buoy_lateral"]],
      "layout": {
        "text-font": ["Roboto Light"],
        "text-field": "{seamark:name}",
        "symbol-placement": "point",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "buoy_safe_water",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "buoy_safe_water"]],
      "layout": {
        "text-font": ["Roboto Light"],
        "text-field": "{seamark:name}",
        "symbol-placement": "point",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "buoy_special_purpose",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "buoy_special_purpose"]],
      "layout": {
        "text-font": ["Roboto Light"],
        "text-field": "{seamark:name}",
        "symbol-placement": "point",
        "icon-image": "Buoy_Special_Purpose",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "cable_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "name", "cable_area"]],
      "paint": {"fill-color": "rgba(215, 95, 1, 0.1)"}
    },
    {
      "id": "cable_overhead",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "cable_overhead"]],
      "paint": {"line-color": "rgba(215, 95, 1, 1)"}
    },
    {
      "id": "cable_submarine",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "cable_submarine"]],
      "paint": {"line-color": "rgba(215, 95, 1, 1)"}
    },
    {
      "id": "coastguard_station",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "coastguard_station"]],
      "layout": {
        "text-field": "Küstenwache",
        "text-font": ["Roboto Italic"],
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "crane",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "crane"]],
      "layout": {
        "text-field": "Kran",
        "text-font": ["Roboto Italic"],
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true,
        "icon-image": "Crane_other"
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "distance_mark",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "distance_mark"]],
      "layout": {
        "text-field": "{seamark:distance_mark:distance} {seamark:distance_mark:unit}",
        "text-font": ["Roboto Regular"],
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "daymark",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "daymark"]],
      "layout": {
        "text-field": "Tagesmarke",
        "text-font": ["Roboto Italic"],
        "text-ignore-placement": true,
        "text-allow-overlap": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "dredged_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "dredged_area"]],
      "layout": {"visibility": "visible"},
      "paint": {"fill-color": "rgba(255, 255, 255, 0.1)"}
    },
    {
      "id": "dumping_ground",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "dumping_ground"]],
      "layout": {"visibility": "visible"},
      "paint": {"fill-color": "rgba(255, 255, 0, 0.1)"}
    },
    {
      "id": "\tfairway",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "\tfairway"]],
      "layout": {"visibility": "visible"},
      "paint": {"fill-color": "rgba(255, 255, 255, 0.1)"}
    },
    {
      "id": "ferry_route",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "ferry_route"]],
      "paint": {"line-color": "rgba(0, 126, 255, 1)", "line-dasharray": [5, 5]}
    },
    {
      "id": "wall",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "wall"]],
      "paint": {"line-color": "rgba(0, 0, 0, 1)", "line-dasharray": [5, 5]}
    },
    {
      "id": "fog_signal",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "fog_signal"]],
      "layout": {
        "text-field": "Nebelsignal",
        "text-font": ["Roboto Light"],
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "harbour",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "maxzoom": 16,
      "filter": ["all", ["==", "seamark:type", "harbour"]],
      "layout": {
        "text-field": {"stops": [[0, ""], [13, "{seamark:name}"]]},
        "text-font": ["Roboto Light"],
        "text-anchor": "top",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true,
        "text-justify": "auto",
        "icon-anchor": "bottom",
        "icon-text-fit": "none",
        "text-max-width": 20,
        "text-pitch-alignment": "auto",
        "icon-image": {
          "property": "seamark:harbour:category",
          "type": "categorical",
          "stops": [
            [{"zoom": 0, "value": "ferry"}, "NChart-Symbol_INT_Harbour"],
            [{"zoom": 0, "value": "marina"}, "NChart-Symbol_INT_Marina"],
            [{"zoom": 0, "value": "marina_no_facilities"}, "Marina_NF"],
            [
              {"zoom": 0, "value": "fishing"},
              "NChart-Symbol_INT_Fishing_Harbour"
            ]
          ],
          "default": "NChart-Symbol_INT_Harbour"
        }
      },
      "paint": {
        "text-halo-width": 1,
        "text-halo-blur": 0.5,
        "text-halo-color": "rgba(255, 255, 255, 1)",
        "icon-opacity": 1
      }
    },
    {
      "id": "hulk_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "hulk"]],
      "paint": {
        "fill-color": "rgba(255, 255, 0, 1)",
        "fill-outline-color": "rgba(0, 0, 0, 1)"
      }
    },
    {
      "id": "hulk",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "maxzoom": 24,
      "filter": ["all", ["==", "seamark:type", "hulk"]],
      "layout": {
        "text-field": "{seamark:hulk:category}",
        "text-font": ["Roboto Light"],
        "text-anchor": "center",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true,
        "text-justify": "auto",
        "icon-anchor": "center",
        "icon-text-fit": "none",
        "text-pitch-alignment": "auto"
      },
      "paint": {
        "text-halo-width": 1,
        "text-halo-blur": 0.5,
        "text-halo-color": "rgba(255, 255, 255, 1)",
        "icon-opacity": 1
      }
    },
    {
      "id": "landmark_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "landmark"]],
      "paint": {
        "fill-color": "rgba(0, 255, 0, 0.1)",
        "fill-outline-color": "rgba(0, 0, 0, 1)"
      }
    },
    {
      "id": "landmark_line",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "landmark"]],
      "paint": {"line-color": "rgba(0, 255, 0, 1)", "line-dasharray": []}
    },
    {
      "id": "landmark",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "landmark"]],
      "layout": {
        "text-field": "{seamark:landmark:category}",
        "text-font": ["Roboto Regular"],
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "light",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "light"]],
      "layout": {
        "text-field": "{seamark:light:colour}",
        "text-font": ["Roboto Light Italic"],
        "visibility": "visible",
        "icon-image": "Light_Minor",
        "text-anchor": "top",
        "text-justify": "auto",
        "icon-anchor": "center",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "light_minor",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "light_minor"]],
      "layout": {
        "text-field": "{seamark:light:colour}",
        "text-font": ["Roboto Light Italic"],
        "visibility": "visible",
        "icon-image": "Light_Minor",
        "text-anchor": "top",
        "text-justify": "auto",
        "icon-anchor": "center",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "light_major",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 8,
      "filter": ["all", ["==", "seamark:type", "light_major"]],
      "layout": {
        "text-field": "{seamark:light:colour}",
        "text-font": ["Roboto Light Italic"],
        "visibility": "visible",
        "icon-image": "Light_Minor",
        "text-anchor": "top",
        "text-justify": "center",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "light_float",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "light_float"]],
      "layout": {
        "text-field": "{seamark:light:colour}",
        "text-font": ["Roboto Light Italic"],
        "visibility": "visible",
        "icon-image": "Light_Minor",
        "text-anchor": "top",
        "text-justify": "center",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "light_vessel",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "light_vessel"]],
      "layout": {
        "text-field": "{seamark:light:colour}",
        "text-font": ["Roboto Light Italic"],
        "visibility": "visible",
        "icon-image": "Light_Minor",
        "text-anchor": "top",
        "text-justify": "center",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "mooring",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 16,
      "filter": ["all", ["==", "seamark:type", "mooring"]],
      "layout": {
        "text-field": "",
        "text-font": ["Roboto Light"],
        "icon-image": {
          "property": "seamark:mooring:category",
          "type": "categorical",
          "stops": [
            [{"value": "pile", "zoom": 6}, "Post"],
            [{"value": "dolphin", "zoom": 10}, "Dolphin"]
          ],
          "default": "Post"
        },
        "icon-allow-overlap": true,
        "icon-ignore-placement": true,
        "text-allow-overlap": true,
        "text-ignore-placement": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "mooring_circle",
      "type": "circle",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 16,
      "filter": ["all", ["==", "seamark:type", "mooring"]],
      "layout": {"visibility": "none"},
      "paint": {
        "circle-radius": 2,
        "circle-color": {
          "property": "seamark:mooring:category",
          "type": "categorical",
          "stops": [
            [{"zoom": 0, "value": "dolphin"}, "rgba(255, 255, 1, 1)"],
            [{"zoom": 0, "value": "pile"}, "#000000"]
          ],
          "default": "rgba(0, 0, 0, 0)"
        },
        "circle-pitch-scale": "map"
      }
    },
    {
      "id": "marine_farm_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "marine_farm"]],
      "layout": {"visibility": "visible"},
      "paint": {"fill-color": "rgba(0, 136, 255, 0.1)"}
    },
    {
      "id": "marine_farm_line",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "filter": ["all", ["==", "seamark:type", "marine_farm"]],
      "paint": {
        "line-color": "rgba(0, 136, 255, 0.1)",
        "line-dasharray": [5, 5]
      }
    },
    {
      "id": "marine_farm",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "marine_farm"]],
      "layout": {
        "text-field": "Fischzucht",
        "text-font": ["Roboto Light Italic"],
        "visibility": "visible",
        "icon-image": "Light_Minor",
        "text-anchor": "top",
        "text-justify": "center",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "navigation_line",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "navigation_line"]],
      "paint": {"line-color": "#000000", "line-dasharray": [5, 5]}
    },
    {
      "id": "notice",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 13,
      "filter": ["all", ["==", "seamark:type", "notice"]],
      "layout": {
        "text-field": "",
        "text-font": ["Roboto Regular"],
        "visibility": "visible",
        "icon-image": {
          "property": "seamark:notice:category",
          "type": "categorical",
          "stops": [
            [{"zoom": 0, "value": "no_entry"}, "Notice_A1"],
            [{"zoom": 0, "value": "no_anchoring"}, "Notice_A6"],
            [{"zoom": 0, "value": "no_mooring"}, "Notice_A7"],
            [{"zoom": 0, "value": "no_motor_craft"}, "Notice_A12"]
          ],
          "default": "null"
        },
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "obstruction",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "obstruction"]],
      "layout": {
        "text-field": "Hindernis {seamark:name}",
        "text-font": ["Roboto Light"],
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "pile",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 13,
      "filter": ["all", ["==", "seamark:type", "pile"]],
      "layout": {
        "text-field": "",
        "text-font": ["Roboto Light"],
        "icon-image": "Post",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "pile_circle",
      "type": "circle",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 13,
      "filter": ["all", ["==", "seamark:type", "pile"]],
      "layout": {"visibility": "none"},
      "paint": {"circle-color": "rgba(0, 0, 0, 1)", "circle-radius": 3}
    },
    {
      "id": "pipeline_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "pipeline_area"]],
      "paint": {"fill-color": "rgba(179, 0, 195, 0.1)"}
    },
    {
      "id": "pipeline_submarine",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "pipeline_submarine"]],
      "paint": {"line-color": "rgba(179, 0, 195, 1)", "line-dasharray": [5, 5]}
    },
    {
      "id": "pipeline_overhead",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "pipeline_overhead"]],
      "paint": {"line-color": "rgba(179, 0, 195, 1)"}
    },
    {
      "id": "pontoon_line",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "pontoon"]],
      "paint": {"line-color": "rgba(0, 0, 0, 1)"}
    },
    {
      "id": "pontoon",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "pontoon"]],
      "paint": {"fill-color": "rgba(0, 0, 0, 0.5)"}
    },
    {
      "id": "precautionary_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "precautionary_area"]],
      "paint": {"fill-color": "rgba(220, 125, 4, 0.1)"}
    },
    {
      "id": "precautionary",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "precautionary_area"]],
      "layout": {
        "text-field": "({seamark:precautionary_area:restriction})",
        "text-font": ["Roboto Regular"],
        "visibility": "visible",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(220, 125, 4, 1)", "icon-opacity": 1}
    },
    {
      "id": "radar_reflector",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "radar_reflector"]],
      "layout": {
        "text-field": "Radar Reflektor",
        "text-font": ["Roboto Regular"],
        "visibility": "visible",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(220, 125, 4, 1)"}
    },
    {
      "id": "radar_transponder",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "radar_transponder"]],
      "layout": {
        "text-field": "Radar Transponder",
        "text-font": ["Roboto Regular"],
        "visibility": "visible",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(220, 125, 4, 1)"}
    },
    {
      "id": "radar_station",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "radar_station"]],
      "layout": {
        "text-field": "Radar Station",
        "text-font": ["Roboto Regular"],
        "visibility": "visible",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(220, 125, 4, 1)"}
    },
    {
      "id": "calling-in_point",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "calling-in_point"]],
      "layout": {
        "text-field": "Ch.[{seamark:calling-in_point:channel}]",
        "text-font": ["Roboto Regular"],
        "visibility": "visible",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(220, 125, 4, 1)", "icon-opacity": 1}
    },
    {
      "id": "recommended_track",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "recommended_track"]],
      "paint": {"line-color": "#000000", "line-dasharray": []}
    },
    {
      "id": "rescue_station_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "rescue_station"]],
      "paint": {"fill-color": "rgba(0, 255, 0, 0.1)"}
    },
    {
      "id": "rescue_station",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "rescue_station"]],
      "layout": {
        "text-field": "Rettungsstation",
        "text-font": ["Roboto Regular"],
        "visibility": "visible",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(220, 125, 4, 1)", "icon-opacity": 1}
    },
    {
      "id": "restricted_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "restricted_area"]],
      "layout": {"visibility": "visible"},
      "paint": {"fill-color": "rgba(255, 0, 4, 0.1)"}
    },
    {
      "id": "restricted_area_label",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "restricted_area"]],
      "layout": {
        "icon-image": "{class}",
        "text-anchor": "center",
        "text-field": "{seamark:restricted_area:category}",
        "text-font": ["Roboto Light"],
        "text-max-width": 9,
        "visibility": "visible",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {
        "text-color": "rgba(0, 0, 0, 1)",
        "text-halo-blur": 0.5,
        "text-halo-width": 1,
        "icon-opacity": 1
      }
    },
    {
      "id": "sea_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 9,
      "filter": ["all", ["==", "seamark:type", "sea_area"]],
      "layout": {"visibility": "visible"},
      "paint": {"fill-color": "rgba(0, 164, 255, 0.04)"}
    },
    {
      "id": "seaplane_landing_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "seaplane_landing_area"]],
      "layout": {"visibility": "visible"},
      "paint": {"fill-color": "rgba(255, 255, 0, 0.1)"}
    },
    {
      "id": "seaplane_landing_area_label",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "seaplane_landing_area"]],
      "layout": {
        "text-field": "Seeflugzeuge {seamark:seaplane_landing_area_restriction}",
        "text-font": ["Roboto Light"],
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "signal_station_traffic",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "signal_station_traffic"]],
      "layout": {
        "text-field": "Verkehr Station {seamark:signal_station_warning:category}",
        "text-font": ["Roboto Light Italic"],
        "visibility": "visible",
        "icon-image": "Light_Minor",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "signal_station_warning",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "signal_station_warning"]],
      "layout": {
        "text-field": "Warnstation {seamark:signal_station_warning:category}",
        "text-font": ["Roboto Light Italic"],
        "visibility": "visible",
        "icon-image": "Light_Minor",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"icon-opacity": 1}
    },
    {
      "id": "small_craft_facility",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "small_craft_facility"]],
      "layout": {
        "text-field": "",
        "text-font": ["Roboto Light"],
        "visibility": "visible",
        "icon-image": {
          "property": "seamark:small_craft_facility:category",
          "type": "categorical",
          "stops": [
            [{"zoom": 0, "value": "slipway"}, "SlipwaySCF"],
            [{"zoom": 0, "value": "boat_hoist"}, "BoatHoist"],
            [{"zoom": 0, "value": "visitor_berth"}, "visitorberth"],
            [{"zoom": 0, "value": "boatyard"}, "BoatYard"],
            [{"zoom": 0, "value": "fuel_station"}, "FuelStation"],
            [{"zoom": 0, "value": "chandler"}, "Chandler"],
            [{"zoom": 0, "value": "showers"}, "Showers"],
            [{"zoom": 0, "value": "launderette"}, "Launderette"],
            [{"zoom": 0, "value": "toilets"}, "Toilet"],
            [{"zoom": 0, "value": "pump-out"}, "pumpout"],
            [{"zoom": 0, "value": "visitors_mooring"}, "VisitorMooring"]
          ]
        },
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-ignore-placement": true,
        "icon-allow-overlap": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "small_craft_facility_area",
      "type": "fill",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "small_craft_facility"]],
      "layout": {"visibility": "visible"},
      "paint": {"fill-color": "rgba(169, 169, 169, 0.03)"}
    },
    {
      "id": "small_craft_facility_line",
      "type": "line",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 14,
      "filter": ["all", ["==", "seamark:type", "small_craft_facility"]],
      "paint": {"line-color": "#000000", "line-dasharray": []}
    },
    {
      "id": "spring",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "spring"]],
      "layout": {
        "text-field": "Fontäne",
        "text-font": ["Roboto Light"],
        "visibility": "visible",
        "icon-image": "INT-1-J-15",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "rock",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "rock"]],
      "layout": {
        "text-field": "Gestein {name}",
        "text-font": ["Roboto Light Italic"],
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "topmark",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "topmark"]],
      "layout": {
        "text-field": "Topmark {seamark:shape}",
        "text-font": ["Roboto Light"],
        "visibility": "visible",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "wreck",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "minzoom": 12,
      "filter": ["all", ["==", "seamark:type", "wreck"]],
      "layout": {
        "text-field": "{name}",
        "text-font": ["Roboto Light Italic"],
        "icon-image": {
          "property": "seamark:wreck:category",
          "type": "categorical",
          "stops": [
            [{"zoom": 0, "value": "non-dangerous"}, "WreckND"],
            [{"zoom": 0, "value": "dangerous"}, "WreckD"],
            [{"zoom": 0, "value": "distributed_remains"}, "WreckND"],
            [{"zoom": 0, "value": "mast_showing"}, "WreckD"],
            [{"zoom": 0, "value": "hull_showing"}, "WreckD"]
          ],
          "default": "WreckND"
        },
        "icon-anchor": "bottom",
        "text-anchor": "top",
        "text-allow-overlap": true,
        "text-ignore-placement": true,
        "icon-allow-overlap": true,
        "icon-ignore-placement": true
      },
      "paint": {"text-color": "rgba(0, 0, 0, 1)", "icon-opacity": 1}
    },
    {
      "id": "debug",
      "type": "symbol",
      "source": "seamarksdach",
      "source-layer": "seamarksdach",
      "filter": ["all"]
    }
  ],
  "id": "osm-liberty",
  "owner": "Joscha Eckert"
};
