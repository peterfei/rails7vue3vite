<script setup lang="ts">
import { useFetch } from "../../composable/fetch";
const { data } = useFetch("http://127.0.0.1:5000/api/v1/blogs");
</script>

<template>
  <div>
    <h1 class="mb-4">Blogs</h1>
    <div class="grid grid-cols-1 gap-8 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
      <div class="card" v-for="{ title, id,desc } in data" :key="id">
        <div class="card-content">
          <h4 class="card-title">{{ title }}</h4>
          <p>{{ desc }}</p>
          <a :href="`blog/${id}`" class="button button-primary is-small">Learn more...</a>
        </div>
      </div>
    </div>
  </div>
</template>
