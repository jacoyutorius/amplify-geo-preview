<template>
  <div id="app">
    <h2>Amplify Geo</h2>
    <div id="map"></div>
  </div>
</template>

<script>
import { createMap } from "maplibre-gl-js-amplify";
import "maplibre-gl/dist/maplibre-gl.css";

export default {
  name: 'App',
  async created() {
    await createMap({
      container: "map",
      center: [137.7335629, 34.7023743],
      zoom: 12,
      region: "ap-northeast-1"
    })
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 20px;
}

#map { 
  /* The id of the container you passed to createMap */
  position: absolute;
  top: 14%;
  bottom: 0;
  height: 80%;
  width: 100%;
}
</style>
