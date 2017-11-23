SET NAMES UTF8;
DROP DATABASE IF EXISTS tea;
CREATE DATABASE tea CHARSET=UTF8;
USE tea;

CREATE TABLE e_banner(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  bimg VARCHAR(64),
  title VARCHAR(20)
);
INSERT INTO e_banner VALUES
(null,'img/banner/1500520964.jpg','心境'),
(null,'img/banner/1500882173.jpg','好茶');

CREATE TABLE e_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  pimg VARCHAR(64),
  p_title VARCHAR(20),
  classtiy VARCHAR(20)
);
INSERT INTO e_product VALUES
(null,'img/product/thumb.jpg','武夷岩茶','qing'),
(null,'img/product/thumb2.jpg','西湖龙井','green'),
(null,'img/product/thumb3.jpg','高山铁观音','green'),
(null,'img/product/thumb2.jpg','茉莉花茶碧螺春','green'),
(null,'img/product/flower1.jpg','菊花茶','flower'),
(null,'img/product/flower2.jpg','桂花茶','flower'),
(null,'img/product/flower3.jpg','茉莉花','flower'),
(null,'img/product/flower4.jpg','玫瑰花茶','flower');

CREATE TABLE e_news(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  nimg VARCHAR(64),
  n_title VARCHAR(20),
  detail VARCHAR(300)
);
INSERT INTO e_news VALUES
(null,'img/news/news1.jpg','一杯清茶放空心灵的禅意 ','为了生活而忙碌，现在感觉生活压力，越来越大，烦恼越来越多，不知如何放松？如何解压？工作停不下来，下了...'),
(null,'img/news/news2.jpg','
茶倒七分，是人生的一门哲学  ','以前不管是在酒桌上、还是在茶几上总能听到主人说“酒满茶浅”来劝酒和劝茶，但对这句话的含义却一直是半知...'),
(null,'img/news/news3.jpg','
在宋朝当贡茶的径山茶 今成中国茶叶博物馆入馆品牌  ','除了龙井，杭州还有不少历史名茶，余杭径山的径山茶就是其中之一。今天（19日），径山茶正式入驻中国茶叶...'),
(null,'img/news/news4.jpg','三伏天 | 宜伏 宜苦 宜茯  ','今天开始进入一年中最热的时间——三伏，三伏是初伏、中伏和末伏的统称。史书记载“伏者，隐伏避盛夏也”，...'),
(null,'img/news/news5.jpg','茶产业要从源头把好质量关  ','5月10日，2016第七期全国农牧渔业大县局长轮训园艺作物（茶叶）重点县农业局长班正式结业，来自18...'),
(null,'img/news/news6.jpg','扬帆新丝路 安溪铁观音从输出茶叶到输出茶文化  ','“茶不仅是茶，也凝聚我们的民族精神。如果能用三年时间，在外国爱茶人心中植下茶文化的种子。十年后，我们...');

CREATE TABLE e_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(16),
  upwd VARCHAR(20),
  phone VARCHAR(16),
  email VARCHAR(16),
  avater VARCHAR(64)
);