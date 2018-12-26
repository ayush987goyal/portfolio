<template>
  <v-card color="blue-grey lighten-5 my-card">
    <v-img :src="require(`~/static/img/${details.image}`)" height="15vw"></v-img>
    <v-card-title primary-title>
      <div>
        <h3 class="my-title">{{ details.title }}</h3>
      </div>
    </v-card-title>
    <v-card-actions class="my-action">
      <v-btn flat color="blue" :href="details.explore" target="_blank">Explore</v-btn>
      <v-btn flat color="blue" :href="details.github" target="_blank">
        <i class="fab fa-github intro__social--icon mr-2"></i>GitHub
      </v-btn>
    </v-card-actions>
  </v-card>
</template>

<script>
export default {
  props: ['details']
};
</script>

<style lang="scss" scoped>
.my-title {
  font-weight: 400;
  font-size: 2rem;

  @media only screen and (max-width: 850px) {
    font-size: 1.4rem;
  }

  @media only screen and (max-width: 730px) {
    font-size: 1rem;
  }
}

.my-card {
  width: 100%;
}

.my-action {
  @media only screen and (max-width: 500px) {
    display: flex;
    flex-direction: column;
  }
}
</style>
