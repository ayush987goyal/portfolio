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
        <v-list-tile ripple v-for="item in items" :key="item.name" @click="drawer = !drawer">
          <v-list-tile-content>
            <v-list-tile-title>{{ item.name }}</v-list-tile-title>
          </v-list-tile-content>
        </v-list-tile>
      </v-list>
    </v-navigation-drawer>

    <v-toolbar fixed app>
      <v-toolbar-side-icon class="hidden-md-and-up"  @click="drawer = !drawer"></v-toolbar-side-icon>
      <v-toolbar-title v-text="title"></v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-items class="hidden-sm-and-down">
        <v-btn flat v-for="item of items" :key="item.name">{{ item.name }}</v-btn>
      </v-toolbar-items>
    </v-toolbar>

    <v-content>
      <v-container>
        <intro /> 
      </v-container>
    </v-content>

    <v-footer app>
      <span>&copy; 2018</span>
    </v-footer>

  </v-app>
</template>

<script>
import intro from './components/intro';

export default {
  components: {
    intro
  },
  data() {
    return {
      title: 'Ayush Goyal',
      drawer: false,
      items: [
        { name: 'Experience', target: '#experience' },
        { name: 'Education', target: '#education' },
        { name: 'Portfolio', target: '#portfolio' },
        { name: 'Skills', target: '#skills' },
        { name: 'Contact', target: '#contact' }
      ]
    };
  }
};
</script>
