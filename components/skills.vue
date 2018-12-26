<template>
  <section class="skills">
    <div class="skills__title">
      <h2>Skills</h2>
    </div>
    <div class="skills__images">
      <figure v-for="image in images" :key="image.title" class="skills__item">
        <img :src="require(`~/static/img/${image.src}`)" :title="image.title">
      </figure>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      images: [
        { src: 'html5.png', title: 'HTML5' },
        { src: 'angular.png', title: 'Angular' },
        { src: 'vuejs.png', title: 'VueJS' },
        { src: 'react.png', title: 'ReactJS' },
        { src: 'ionic.png', title: 'Ionic' },
        { src: 'nodejs.jpg', title: 'NodeJS' },
        { src: 'mongodb.png', title: 'MongoDB' },
        { src: 'typescript.png', title: 'TypeScript' },
        { src: 'sass.png', title: 'Saas' },
        { src: 'flutter.png', title: 'Flutter' },
        { src: 'docker.jpg', title: 'Docker' },
        { src: 'kubernetes.png', title: 'Kubernetes' }
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
