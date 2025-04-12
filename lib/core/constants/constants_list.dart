
class Data
{
  static List groupMemberTabs=['Nearby','Joined','Favorites'];
  static List chatsTabs=['Groups','Friends'];
  static List searchEventsTabs=['Events','People'];

  static List groupLeaderTabs=['Nearby','Joined','My Groups','Favorites'];
  static List datesItems = ["Today", "Tomorrow", "This Week", "This Month"];

  static iconFromIndex(int index) {
    switch (index) {
      case 0:
        return '🎨';  // Design
      case 1:
        return '🎶';  // Music
      case 2:
        return '🎨';  // Art (could be represented with same as Design, or you can change)
      case 3:
        return '🏈';  // Sports (Football)
      case 4:
        return '🍔';  // Food
      case 5:
        return '⚪';  // Others (Dot)
      case 6:
        return '⚽';  // Soccer
      case 7:
        return '🏀';  // Basketball
      case 8:
        return '🎾';  // Tennis
      case 9:
        return '🏐';  // Volleyball
      case 10:
        return '⚾';  // Baseball
      case 11:
        return '🎱';  // Pool
      case 12:
        return '🍸';  // Clubs
      case 13:
        return '🏞️';  // Hiking
      case 14:
        return '🚴';  // Biking
      case 15:
        return '🚗';  // Cars
      case 16:
        return '✈️';  // Traveling

      case 17:
        return '🏠';  // Real Estate
      case 18:
        return '💼';  // Business
      case 19:
        return '🎮';  // Video Games
      case 20:
        return '🔧';  // Engineering
      case 21:
        return '💘';  // Dating
      case 22:
        return '🥋';  // Martial Arts
      case 23:
        return '🔬';  // Science
      case 24:
        return '♈';  // Astrology (Zodiac Sign)
      case 25:
        return '🕊️';  // Spirituality
      case 26:
        return '💃';  // Dancing
      case 27:
        return '⛵';  // Boating
      case 28:
        return '🧠';  // Mental Health
      case 29:
        return '🍻';  // Socializing
      case 30:
        return '🏓';  // Pickleball
      case 31:
        return '🎞️';  // Horror Movies
      case 32:
        return '🎧';  // Music Production
      case 33:
        return '🐶';  // Animals
      case 34:
        return '🌃';  // Nightlife
      case 35:
        return '🎶';  // Concerts/Festivals
      case 36:
        return '🧘‍♂️';  // Yoga
      case 37:
        return '🍻';
      case 38:
        return '🥷'; // Bar Crawls
      default:
        return '⚪';  // Default to a dot
    }
  }
  static labelFromIndex(int index) {
    switch (index) {
      case 0:
        return 'Design';
      case 1:
        return 'Music';
      case 2:
        return 'Art';
      case 3:
        return 'Sports';
      case 4:
        return 'Food';
      case 5:
        return 'Other';
      case 6:
        return 'Soccer';
      case 7:
        return 'Basketball';
      case 8:
        return 'Tennis';
      case 9:
        return 'Volleyball';
      case 10:
        return 'Baseball';
      case 11:
        return 'Pool';
      case 12:
        return 'Clubs';
      case 13:
        return 'Hiking';
      case 14:
        return 'Biking';
      case 15:
        return 'Cars';
      case 16:
        return 'Traveling';
      case 17:
        return 'Real Estate';
      case 18:
        return 'Business';
      case 19:
        return 'Video Games';
      case 20:
        return 'Engineering';
      case 21:
        return 'Dating';
      case 22:
        return 'Martial Arts';
      case 23:
        return 'Science';
      case 24:
        return 'Astrology';
      case 25:
        return 'Spirituality';
      case 26:
        return 'Dancing';
      case 27:
        return 'Boating';
      case 28:
        return 'Mental Health';
      case 29:
        return 'Socializing';
      case 30:
        return 'Pickleball';
      case 31:
        return 'Movies';
      case 32:
        return 'Music Production';
      case 33:
        return 'Animals';
      case 34:
        return 'Nightlife';
      case 35:
        return 'Concerts';
      case 36:
        return 'Yoga';
      case 37:
        return 'Bar Crawls';
      case 38:
        return 'Anime';
      default:
        return 'Unknown';
    }
  }

}