<template>
  <v-app>

    <v-navigation-drawer app temporary v-model="drawer">
      <v-toolbar flat>
        <v-list>
          <v-list-tile>
            <v-list-tile-title class="title">
              {{ title }}
            </v-list-tile-title>
          </v-list-tile>
        </v-list>
      </v-toolbar>
      <v-divider></v-divider>
      <v-list dense class="pt-0">
        <v-list-tile ripple v-for="item in items" :key="item.name" @click="$vuetify.goTo($refs[item.target], options); drawer = !drawer">
          <v-list-tile-content>
            <v-list-tile-title>{{ item.name }}</v-list-tile-title>
          </v-list-tile-content>
        </v-list-tile>
      </v-list>
    </v-navigation-drawer>

    <v-toolbar fixed app>
      <v-toolbar-side-icon class="hidden-md-and-up"  @click="drawer = !drawer"></v-toolbar-side-icon>
      <v-toolbar-title v-text="title" @click="$vuetify.goTo(0)"></v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-items class="hidden-sm-and-down">
        <v-btn flat v-for="item of items" :key="item.name" @click="$vuetify.goTo($refs[item.target], options)">{{ item.name }}</v-btn>
      </v-toolbar-items>
    </v-toolbar>

    <v-content>
      <Intro ref="intro" />
      <About ref="about" /> 
      <Portfolios ref="portfolios" />
      <Skills ref="skills" />
      <Contact ref="contact" />
      <!-- <v-footer absolute>
        <v-flex xs12 py-3 text-xs-center>
          &copy;2018 — <strong>Ayush</strong>
        </v-flex>
      </v-footer> -->
    </v-content>

  </v-app>
</template>

<script>
import Intro from './components/intro';
import About from './components/about';
import Portfolios from './components/portfolios';
import Skills from './components/skills';
import Contact from './components/contact';

export default {
  components: {
    Intro,
    About,
    Portfolios,
    Skills,
    Contact
  },
  data() {
    return {
      title: 'Ayush Goyal',
      drawer: false,
      items: [
        { name: 'About', target: 'about' },
        { name: 'Portfolio', target: 'portfolios' },
        { name: 'Skills', target: 'skills' },
        { name: 'Contact', target: 'contact' }
      ],
      options: {
        duration: 500,
        offset: -30,
        easing: 'easeInOutCubic'
      }
    };
  }
};
</script>
