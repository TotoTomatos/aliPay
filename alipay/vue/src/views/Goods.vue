<template>
  <div>

    <el-table :data="tableData" strip>
      <el-table-column prop="id" label="序号" width="70" align="center"></el-table-column>
      <el-table-column prop="name" label="商品名称"></el-table-column>
      <el-table-column prop="no" label="商品编号"></el-table-column>
      <el-table-column prop="price" label="商品价格"></el-table-column>
      <el-table-column prop="date" label="生产日期"></el-table-column>
      <el-table-column label="操作" align="center">
        <template v-slot="scope">
          <el-button type="primary" size="small" @click="buy(scope.row)">购买</el-button>
        </template>
      </el-table-column>
    </el-table>

  </div>
</template>
<script>
import axios from "axios";

export default {
  name: "Goods",
  data() {
    return {
      tableData: []
    }
  },
  created() {
    this.load()
  },
  methods: {
    buy(row) {
      axios.post('http://localhost:9090/orders/add', { goodsName: row.name, num: 1, total: row.price * 1 }).then(res => {
        this.$message.success('下单成功！请支付')
      })
    },
    load() {  // 分页查询
      axios.get('http://localhost:9090/goods/selectAll').then(res => {
        this.tableData = res.data?.data
      })
    },
  }
}
</script>

<style scoped>

</style>