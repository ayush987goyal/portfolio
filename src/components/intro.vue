<template>
  <section class="intro">
    <div class="intro__card">
      <img src="../assets/img/myimage.jpg" alt="Personal Image" class="intro__photo">
      <div class="intro__text">
        <div class="intro__head">
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
        <v-btn fab dark icon href="https://github.com/ayush987goyal" target="_blank">
          <i class="fab fa-github intro__social--icon"></i>
        </v-btn>
        <v-btn fab dark icon href="https://www.linkedin.com/in/ayush-goyal-1307/" target="_blank">
          <i class="fab fa-linkedin-in intro__social--icon"></i>
        </v-btn>
        <v-btn fab dark icon href="https://twitter.com/ayush987goyal" target="_blank">
          <i class="fab fa-twitter intro__social--icon"></i>
        </v-btn>
        <v-btn fab dark icon href="https://www.facebook.com/ayush987goyal" target="_blank">
          <i class="fab fa-facebook-f intro__social--icon"></i>
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
    url(../assets/img/pexels.jpeg);
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

    @media only screen and (max-width: 1100px) {
      grid-template-columns: 1fr;
      grid-template-rows: min-content 5rem;
    }

    @media only screen and (max-width: 730px) {
      width: auto;
    }
  }

  &__photo {
    width: 100%;
    height: 100%;
    object-fit: cover;
    object-position: top;
    filter: contrast(80%);
    display: block;

    @media only screen and (max-width: 1100px) {
      display: none;
    }
  }

  &__text {
    padding: 2rem 4rem;

    display: grid;
    grid-template-columns: 1fr;

    @media only screen and (max-width: 1100px) {
      grid-template-columns: 1fr 1fr;
    }

    @media only screen and (max-width: 850px) {
      grid-column-gap: 1rem;
    }

    @media only screen and (max-width: 730px) {
      grid-template-columns: 1fr;
      padding: 2rem 0;
    }

    @media only screen and (max-width: 600px) {
      padding: 1rem 0;
    }
  }

  &__head {
    @media only screen and (max-width: 1100px) {
      width: 100%;
      text-align: center;
      margin-bottom: 2rem;

      grid-column: 1 / -1;
    }

    @media only screen and (max-width: 600px) {
      margin-bottom: 0.5rem;
    }
  }

  &__name {
    font-weight: 300;
    font-size: 2.3rem;

    @media only screen and (max-width: 600px) {
      font-size: 1.8rem;
    }
  }

  &__desg {
    font-weight: 700;
    font-size: 1.5rem;
    text-transform: uppercase;

    @media only screen and (max-width: 600px) {
      font-size: 1.2rem;
    }
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

    @media only screen and (max-width: 730px) {
      margin-left: 4rem;
    }
  }

  &__social {
    background-color: rgb(24, 33, 83);

    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-evenly;

    @media only screen and (max-width: 1100px) {
      flex-direction: row;
    }

    &--icon {
      color: #fff;
      font-size: 1.5rem;
    }
  }
}
</style>
