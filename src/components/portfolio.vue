<template>
  <v-card color="grey lighten-4">
    <v-card-media :src="require(`../assets/img/${details.image}`)" height="200px"></v-card-media>
    <v-card-title primary-title>
      <div>
        <h3 class="headline">{{ details.title }}</h3>
      </div>
    </v-card-title> 
    <v-card-actions>
      <v-btn flat color="blue" :href="details.explore" target="_blank">Explore</v-btn>
      <v-btn flat color="blue" :href="details.github" target="_blank"><i class="fab fa-github intro__social--icon mr-2"></i>GitHub</v-btn>
    </v-card-actions>
  </v-card>
</template>

<script>
export default {
  props: ['details']
};
</script>
