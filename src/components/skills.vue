<template>
  <section class="skills">
    <div class="skills__title">
      <h2>Skills</h2>
    </div>
    <div class="skills__images">
      <figure v-for="image in images" :key="image" class="skills__item">
        <img :src="require(`../assets/img/${image}`)">
      </figure>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      images: [
        'angular.png',
        'vuejs.png',
        'nodejs.jpg',
        'mongodb.png',
        'typescript.png',
        'ionic.png',
        'html5.png',
        'sass.png'
      ]
    };
  }
};
</script>


<style lang="scss" scoped>
.skills {
  padding: 4rem;
  background-color: #fff;

  &__title {
    text-align: center;
    margin-bottom: 3rem;
    font-weight: 300;

    h2 {
      color: rgb(24, 33, 83);
      font-weight: 300;
      font-size: 3.5rem;

      @media only screen and (max-width: 600px) {
        font-size: 2.5rem;
      }
    }

    @media only screen and (max-width: 600px) {
      margin-bottom: 1.5rem;
    }
  }

  @media only screen and (max-width: 600px) {
    padding: 2rem;
  }

  &__images {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    grid-gap: 2rem;
    grid-row-gap: 4rem;
    justify-items: center;
    align-items: center;
  }

  &__item {
    img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      display: block;
    }
  }
}
</style>
