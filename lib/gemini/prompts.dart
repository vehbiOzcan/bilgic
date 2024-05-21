class Prompts {
  static String generalPrompt =
      '''kelimesinin tanımını yap ve bu kelimenin kullanımına dair 3 örnek ver. Cevabını Türkçe olarak oluştur.''';

  static String historyPrompt =
      '''kelimesinin tanımını tarih bilimine göre yap, eğer bu kelime bir savaş, olay veya önemli bir tarih ile ilgili ise bu olayın tarihini ve detaylarını belirt, bir savaş, olay veya tarih değil ise kelimenin anlamını tanımla ve kelimenin kullanımına dair 1 tane tarihle ilgili örnek ver. Cevabını Türkçe olarak oluştur.''';

  static String geographyPrompt =
      '''kelimesinin tanımını coğrafya bilimine göre yap, eğer bu kelime bir coğrafya konusu ise kelimenin tasvir ettiği konudan kısaca bahset eğer konu değil ise kelimenin kullanımına dair 1 tane coğrafya ile ilgili örnek ver. Cevabını Türkçe olarak oluştur.''';

  static String sciencePrompt =
      '''kelimesinin tanımını fen bilimlerine göre yap, eğer bu kelime bir fen konusu ise kelimenin tasvir ettiği konudan kısaca bahset eğer konu değil ise kelimenin kullanımına dair 1 tane fen ile ilgili örnek ver. Cevabını Türkçe olarak oluştur.''';

  static String techPrompt =
      '''kelimesinin tanımını teknolojiye göre yap, eğer bu kelime bir teknoloji konusu ise kelimenin tasvir ettiği konudan kısaca bahset eğer konu değil ise kelimenin kullanımına dair 1 tane teknolojide kullanımı ile ilgili örnek ver. Cevabını Türkçe olarak oluştur.''';

  static String aiPrompt =
      '''kelimesinin tanımını yapay zeka teknolojilerine göre yap, eğer bu kelime bir yapay zeka konusu ise kelimenin tasvir ettiği konudan kısaca bahset eğer konu değil ise kelimenin yapay zekada yeri ve kullanımına dair 1 tane yapay zeka kullanımı ile ilgili örnek ver. Cevabını Türkçe olarak oluştur.''';

  static String foodPrompt =
      ''' tırnak içinde verdiğim malzemelerden yapılabilecek bir yemek seç ve bu yemeğin hangi mutfağa ait olduğunu belirt. Ardından bu yemeğin tarifini, gerekli ölçüleri ve püf noktalarını detaylı bir şekilde açıkla.Cevabını Türkçe olarak oluştur.Lütfen tarifte şu detayları belirt:
Yemeğin adı ve hangi mutfağa ait olduğu.
Gerekli malzemeler ve her bir malzemenin ölçüsü.
Yemeğin hazırlanış aşamaları.
Pişirme süresi ve yöntemi.
Servis önerileri ve püf noktaları.''';

  static String gamePrompt =
      '''oyununun nasıl oynanacağını, kurallarını ve gerekli araçları açıklamanı ver. Detaylı ve anlaşılır bir açıklama yap. Cevaplarını Türkçe olarak oluştur.Açıklamada aşağıdaki noktaları belirt:
Oyunun genel tanımı ve amacı nedir?
Oyunun kaç kişiyle oynandığı ve oyuncu rollerinin neler olduğu.
Oyunun başlama şekli ve sırası.
Oyunun kuralları ve dikkat edilmesi gereken noktalar.
Oyunun bitiş şekli ve kazanma koşulları.
Oyunu oynamak için gerekli olan araçlar veya malzemeler nelerdir?''';

  static String engTrPrompt =
      '''İnglizce kelimenin Türkçe karşılığını ve nasıl telaffuz edildiğini göster. Bu ingilizce kelimenin anlamını Türkçe olarak oluştur, bu kelimenin kullanımına dair 2 tane cümle oluştur bu cümlelerin aynısını hem İngilizce hem Türkçe olacak şekilde oluştur.''';

  static String trEngPrompt =
      '''Türkçe kelimenin İngilizce karşılığını ve nasıl telaffuz edildiğini göster. Bu ingilizce kelimenin anlamını İngilizce olarak oluştur, bu kelimenin kullanımına dair 2 tane cümle oluştur bu cümlelerin aynısını hem İngilizce hem Türkçe olacak şekilde oluştur.''';
}
