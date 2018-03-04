<template>
  <section class="about">
      <h1 class="about__heading">Hello! I'm Ayush</h1>
      <p class="about__para">
        Hard-working and highly motivated.<br>
        Ready to learn new things and grasp them easily.<br>
        Passionate for Speed-Cubing and programming.<br>
        Enjoy facing different challenges.<br>
        Love working in a team and encouraging others.<br>
        Concerned about the environment. <br>
      </p>
  </section>
</template>

<style lang="scss" scoped>
.about {
  padding: 7rem;
  color: rgb(24, 33, 83);
  display: flex;
  flex-direction: column;

  justify-content: center;
  align-items: center;

  @media only screen and (max-width: 600px) {
    padding: 3rem;
  }

  &__heading {
    font-size: 3.5rem;
    font-weight: 400;

    @media only screen and (max-width: 600px) {
      font-size: 2.5rem;
    }
  }

  &__para {
    margin-top: 1rem;
    font-size: 1.4rem;
    text-align: center;
    font-weight: 300;

    @media only screen and (max-width: 600px) {
      font-size: 1rem;
    }
  }
}
</style>
