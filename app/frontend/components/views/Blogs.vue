<script setup lang="ts">
import { useFetch } from "../../composable/fetch";
const { data } = useFetch("http://127.0.0.1:5000/api/v1/blogs");
</script>


<template>
<div class="bg-white mx-auto max-w-sm shadow-lg rounded-lg overflow-hidden">
<div class="sm:flex sm:items-center px-6 py-4">
  <img class="block h-16 sm:h-24 rounded-full mx-auto mb-4 sm:mb-0 sm:mr-4 sm:ml-0" src="https://avatars2.githubusercontent.com/u/4323180?s=400&u=4962a4441fae9fba5f0f86456c6c506a21ffca4f&v=4" alt="">
  <div class="text-center sm:text-left sm:flex-grow">
    <div class="mb-4">
      <p class="text-xl leading-tight">Adam Wathan</p>
      <p class="text-sm leading-tight text-grey-dark">Developer at NothingWorks Inc.</p>
    </div>
    <div>
      <button class="text-xs font-semibold rounded-full px-4 py-1 leading-normal bg-white border border-purple text-purple hover:bg-purple hover:text-white">Message</button>
    </div>
  </div>
</div>
</div>


  <div>
    <h1 class="mb-4">Blog</h1>
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
