class ProductModel {
  int? id;
  String? name;
  String? image;
  String? story;

  ProductModel({
    this.id,
    this.name,
    this.image,
    this.story,
  });
}

List<ProductModel> productList = [
  ProductModel(
    id: 1,
    name: 'Solo Leveling',
    image:
     'images/solo-leveling.png',
    story: '10 years ago, after the emergence of the "gate" that connected the real world with the world of monsters, every day some ordinary people get the ability to hunt monsters inside the portal.  They are known as "hunters".  However, not all hunters are strong.  My name is Seung Jin-Woo, a rank Z Hunter. I am a person who spreads danger that threatens his life even in the weakest dungeon, “The World’s Weakest Hunter.”  I have absolutely no skills to display, until I found the most difficult dungeon hidden within a rank D dungeon!  In the end, when I accepted death, I suddenly received a strange power, a mission record that could not be',
  ),
  ProductModel(
    id: 2,
    name: 'The Beginning After The End',
    image:
     'images/the-beginning.png',
    story: 'King Gray possesses unparalleled power, wealth, and prestige in a world ruled by martial ability.  However, the solitude lies behind the owners of the great power.  Beneath the mesmerizing exterior of a powerful king lurks by chance a man, devoid of purpose and will.  The king reincarnates into a new world full of magic and monsters, and has a second chance to revive his life.  However, correcting the mistakes of the past will not be his only challenge'
  ),
  ProductModel(
    id: 3,
    name: 'Martial peak',
    image:
     'images/martial-peak.png',
    story: 'The journey to the top of martial arts is a lonely, lonely, lonely journey. In the face of adversity you must survive and fight relentlessly, and only then can you rise and continue your journey to become the strongest. The Supreme Heavenly Pavilion Sect tests its disciples in the harshest of ways to prepare them for this journey, and one day a weak apprentice Yang Kai managed to obtain a black book that put him on the path to the top of the martial arts realm.'
  ),
  ProductModel(
      id: 4,
      name: 'The Great Mage Returns After 4000 years',
      image:
      'images/the-great-mage.png',
    story: "The worst student at Westroad Academy, the disgrace of Blake's house, a new spirit enters Frey Blake's body... It seems that the great magician Lukas Traumen has possessed that body, and now begins the intriguing adventure of the great wizard who has returned after 4000 years..."
  ),
];
