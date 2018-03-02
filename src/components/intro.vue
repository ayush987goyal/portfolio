<template>
  <section class="intro">
    <div class="intro__card">
      <img src="../assets/img/image.png" alt="Personal Image" class="intro__photo">
      <div class="intro__text">
        <div>
          <span class="intro__name">Ayush Goyal</span>
          <p class="intro__desg">Web Developer</p>
        </div>
        <div class="intro__other">
          <span>Phone:</span>
          <p>+91-8266-940-459</p>
        </div>
        <div class="intro__other">
          <span>Email:</span>
          <p>ayush987goyal@gmail.com</p>
        </div>
        <div class="intro__other">
          <span>Address:</span>
          <p>Kharadi, Pune<br>Maharashtra, India</p>
        </div>
        <div class="intro__other">
          <span>Date of Birth:</span>
          <p>July 13th, 1995</p>
        </div>
      </div>
      <div class="intro__social">
        <v-btn fab icon>
          <i class="fab fa-linkedin-in intro__social--icon"></i>
        </v-btn>
        <v-btn fab icon>
          <i class="fab fa-linkedin-in intro__social--icon"></i>
        </v-btn>
        <v-btn fab icon>
          <i class="fab fa-linkedin-in intro__social--icon"></i>
        </v-btn>
        <v-btn fab icon>
          <i class="fab fa-linkedin-in intro__social--icon"></i>
        </v-btn>
      </div>
    </div>
  </section>
</template>

<style lang="scss" scoped>
.intro {
  height: calc(100vh - 64px);

  background-image: linear-gradient(
      rgba(24, 33, 83, 0.75),
      rgba(24, 33, 83, 0.75)
    ),
    url(../assets/img/business-laptop.jpg);
  background-size: cover;
  background-position: center;

  display: flex;
  justify-content: center;
  align-items: center;

  &__card {
    width: 55vw;
    background-color: #fff;
    color: rgb(24, 33, 83);

    display: grid;
    grid-template-columns: repeat(2, 1fr) 5rem;
    justify-content: center;
  }

  &__photo {
    width: 100%;
    height: 100%;
    object-fit: cover;
    object-position: top;
    filter: contrast(80%);
    display: block;
  }

  &__text {
    padding: 2rem 4rem;

    display: grid;
    grid-template-columns: 1fr;
  }

  &__name {
    font-weight: 300;
    font-size: 2.3rem;
  }

  &__desg {
    font-weight: 700;
    font-size: 1.5rem;
    text-transform: uppercase;
  }

  &__other {
    span {
      font-weight: 700;
      font-size: 1.1rem;
    }

    p {
      font-weight: 300;
      font-size: 1.1rem;
    }
  }

  &__social {
    background-color: rgb(24, 33, 83);

    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-evenly;

    &--icon {
      color: #fff;
      font-size: 1.5rem;
    }
  }
}
</style>
