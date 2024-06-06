<template>
  <div id="app" style="padding-top: 50px">
    <nav>
      <router-link to="/goods">商品</router-link> |
      <router-link to="/orders">订单</router-link>
    </nav>
    <div style="margin: 10px auto; width: 70%">
      <router-view/>
    </div>
  </div>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #42b983;
}
</style>
