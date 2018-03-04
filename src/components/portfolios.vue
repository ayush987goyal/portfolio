<template>
  <section class="portfolios">
    <div class="portfolios__title">
      <h2>Portfolio</h2>
    </div>
    <div class="portfolios__cards">
      <Portfolio v-for="portfolio of portfolios" :key="portfolio.image" :details="portfolio" />
    </div>
  </section>
</template>

<script>
import Portfolio from './portfolio';

export default {
  components: {
    Portfolio
  },
  data() {
    return {
      portfolios: [
        {
          title: 'Book Trading Club',
          image: 'booktrade.jpg',
          explore: 'https://book-trading-club-ag.herokuapp.com/',
          github: 'https://github.com/ayush987goyal/book-trading-club-app'
        },
        {
          title: 'Game of Life',
          image: 'gameoflife.jpg',
          explore: 'https://ayush987goyal.github.io/game-of-life/',
          github: 'https://github.com/ayush987goyal/game-of-life'
        },
        {
          title: 'Nightlife Coordinator',
          image: 'nightlife.jpg',
          explore: 'https://nightlife-coordination-app-ag.herokuapp.com/',
          github: 'https://github.com/ayush987goyal/nightlife-coordination-app'
        },
        {
          title: 'Markdown Previewer',
          image: 'markdown.jpg',
          explore: 'https://ayush987goyal.github.io/mardown-previewer/',
          github: 'https://github.com/ayush987goyal/mardown-previewer'
        },
        {
          title: 'Pinterest Clone',
          image: 'pinterestapp.jpg',
          explore: 'https://pinterest-app-ag.herokuapp.com/',
          github: 'https://github.com/ayush987goyal/pinterest-app'
        },
        {
          title: 'Stock Market Watcher',
          image: 'stockmarket.jpg',
          explore: 'https://watch-stock-market-ag.herokuapp.com/',
          github: 'https://github.com/ayush987goyal/watch-stock-market-app'
        },
        {
          title: 'Wikipedia Viewer',
          image: 'wikiviewer.jpg',
          explore: 'https://ayush987goyal.github.io/wikipedia-viewer/',
          github: 'https://github.com/ayush987goyal/wikipedia-viewer'
        },
        {
          title: 'Tic Tac Toe',
          image: 'tictactoe.jpg',
          explore: 'https://ayush987goyal.github.io/tic-tac-toe/',
          github: 'https://github.com/ayush987goyal/tic-tac-toe'
        },
        {
          title: 'Simon Game',
          image: 'simongame.jpg',
          explore: 'https://ayush987goyal.github.io/simon-game/',
          github: 'https://github.com/ayush987goyal/simon-game'
        },
        {
          title: 'Jokes Machine',
          image: 'jokemachine.jpg',
          explore: 'https://codepen.io/ayush987goyal/full/PbMpJz/',
          github: 'https://codepen.io/ayush987goyal/pen/PbMpJz'
        },
        {
          title: 'Voting App',
          image: 'votingapp.jpg',
          explore: 'https://voting-app-ag.herokuapp.com/',
          github: 'https://github.com/ayush987goyal/voting-app'
        },
        {
          title: 'Camper Leaderboard',
          image: 'leaderboard.jpg',
          explore: 'https://ayush987goyal.github.io/camper-leaderboard/',
          github: 'https://github.com/ayush987goyal/camper-leaderboard'
        }
      ]
    };
  }
};
</script>

<style lang="scss" scoped>
.portfolios {
  background-color: rgb(24, 33, 83);
  padding: 2rem 7rem;

  &__title {
    text-align: center;
    margin-bottom: 3rem;

    h2 {
      color: #fff;
      font-weight: 300;
      font-size: 3.5rem;

      @media only screen and (max-width: 600px) {
        font-size: 2.5rem;
      }
    }
  }

  @media only screen and (max-width: 600px) {
    padding: 2rem 4rem;
  }

  &__cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
    grid-gap: 7rem;

    @media only screen and (max-width: 1100px) {
      grid-template-columns: repeat(auto-fit, minmax(15rem, 1fr));
    }

    @media only screen and (max-width: 730px) {
      grid-template-columns: repeat(2, minmax(16rem, 1fr));
      grid-gap: 3rem;
      justify-items: center;
      justify-content: center;
    }

    @media only screen and (max-width: 600px) {
      grid-template-columns: repeat(2, minmax(12rem, 1fr));
      grid-gap: 1.5rem;
    }
  }
}
</style>
