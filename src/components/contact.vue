<template>
  <section class="contact">
    <div class="contact__title">
      <h2>Contact</h2>
    </div>
    <div class="contact__form">
      <v-form v-model="valid" @submit.prevent="submit" ref="form" lazy-validation>
        <v-container grid-list-xl fluid>
          <v-layout wrap>
            <v-flex xs12 sm6>
              <v-text-field
                label="Name"
                v-model="name"
                :rules="nameRules"
                required>
              </v-text-field>
            </v-flex>
            <v-flex xs12 sm6>
              <v-text-field
                label="E-mail"
                v-model="email"
                :rules="emailRules"
                required>
              </v-text-field>
            </v-flex>
            <v-flex xs12>
              <v-text-field
                label="Subject"
                v-model="subject">
              </v-text-field>
            </v-flex>
            <v-flex xs12>
              <v-text-field
                label="Message"
                v-model="message"
                multi-line>
              </v-text-field>
            </v-flex>
          </v-layout>
        </v-container>
        
        <v-btn
          @click="submit"
          :disabled="!valid">
          send
        </v-btn>
      </v-form>
    </div>
  </section>
</template>

<script>
export default {
  data() {
    return {
      valid: true,
      name: '',
      nameRules: [v => !!v || 'Name is required'],
      email: '',
      emailRules: [
        v => !!v || 'E-mail is required',
        v =>
          /^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/.test(v) ||
          'E-mail must be valid'
      ],
      subject: '',
      message: ''
    };
  },
  methods: {
    submit() {
      console.log({
        name: this.name,
        email: this.email,
        subject: this.subject,
        message: this.message
      });
    }
  }
};
</script>


<style lang="scss" scoped>
.contact {
  background-color: rgb(24, 33, 83);
  padding: 2rem 7rem;

  display: flex;
  flex-direction: column;
  align-items: center;

  &__title {
    text-align: center;
    margin-bottom: 3rem;

    h2 {
      color: #fff;
      font-weight: 300;
      font-size: 3.5rem;
    }
  }

  &__form {
    background-color: #fff;
    width: 55vw;
    padding: 2rem;
  }
}
</style>
