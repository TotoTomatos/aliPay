import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    redirect: '/goods'
  },
  {
    path: '/goods',
    name: 'Goods',
    component: () => import('@/views/Goods')
  },
  {
    path: '/orders',
    name: 'Orders',
    component: () => import('@/views/Orders')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
