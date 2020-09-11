
import 'package:flutter/material.dart';
import 'NewsBox.dart';
import 'Product.dart';

void main() {

  runApp(
      MaterialApp(

        home: FirstRoute(),

      ));
}
class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Магазин'),
          backgroundColor: Colors.green[600],

        ),
      body: ListView.builder(


      ),

//        body: new ListView(children : [
//
//          ListTile(  // Наш ListTile
//            leading: Image(
//                image : NetworkImage("https://cdn.book24.ru/v2/ITD000000000943518/COVER/cover3d1__w337.webp", )
//              //  https://cdn.kodixauto.ru/media/image/5f0894e2735f140001058893
//            ),
//
//            title: Text('"Краткие ответы на большие вопросы" Стивен Хокинг'), // Основной текст (название)
//            subtitle: Text('550₽'), // Текст описания
//            trailing: Icon(Icons.keyboard_arrow_right), // Иконка списка с права '>'
//            onTap: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => oneLayout()));
//            },
//
//          ),
//          ListTile(  // Наш ListTile
//            leading: Image(
//                image : NetworkImage("https://cdn.book24.ru/v2/ASE000000000849429/COVER/cover3d1__w337.webp", )
//
//            ),
//            title: Text('"Институт" Стивен Кинг'),
//            subtitle: Text('752₽'),
//            trailing: Icon(Icons.keyboard_arrow_right), // Иконка списка с права '>'
//            onTap: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => twoLayout()));
//            },
//          ),
//          ListTile(  // Наш ListTile
//            leading: Image(
//                image : NetworkImage("https://cdn.book24.ru/v2/AST000000000130417/COVER/cover3d1__w337.webp", )
//
//            ),
//            title: Text('"1984" Джордж Оруэлл'),
//            subtitle: Text('218₽'),
//            trailing: Icon(Icons.keyboard_arrow_right), // Иконка списка с права '>'
//            onTap: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => threeLayout()));
//            },
//          ),
//          ListTile(  // Наш ListTile
//            leading: Image(
//                image : NetworkImage("https://cdn.book24.ru/v2/ITD000000000840510/COVER/cover3d1__w337.webp", )
//
//            ),
//            title: Text('"Маленький принц" Антуан де Сент-Экзюпери'),
//            subtitle: Text('161₽'),
//            trailing: Icon(Icons.keyboard_arrow_right), // Иконка списка с права '>'
//            onTap: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => fourLayout()));
//            },
//          ),
//          ListTile(  // Наш ListTile
//            leading: Image(
//                image : NetworkImage("https://cdn.book24.ru/v2/ASE000000000831712/COVER/cover3d1__w337.webp", )
//
//            ),
//            title: Text('"Сказка о потерянном времени"  Евгений Шварц'),
//            subtitle: Text('144 ₽'),
//            trailing: Icon(Icons.keyboard_arrow_right), // Иконка списка с права '>'
//            onTap: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => fiveLayout()));
//            },
//          ),
//          ListTile(  // Наш ListTile
//            leading: Image(
//                image : NetworkImage("https://cdn.book24.ru/v2/ASE000000000845725/COVER/cover3d1__w337.webp", )
//
//            ),
//            title: Text('"Маленькие женщины"  Луиза Мэй Олкотт'),
//            subtitle: Text('178₽'),
//            trailing: Icon(Icons.keyboard_arrow_right), // Иконка списка с права '>'
//            onTap: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => sixLayout()));
//            },
//          ),
//          ListTile(  // Наш ListTile
//            leading: Image(
//                image : NetworkImage("https://cdn.book24.ru/v2/ASE000000000702013/COVER/cover3d1__w337.webp", )
//
//            ),
//            title: Text('"Мастер и Маргарита"  Михаил Афанасьевич Булгаков'),
//            subtitle: Text('153₽'),
//            trailing: Icon(Icons.keyboard_arrow_right), // Иконка списка с права '>'
//            onTap: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => sevenLayout()));
//            },
//          ),
//          ListTile(  // Наш ListTile
//            leading: Image(
//                image : NetworkImage("https://cdn.book24.ru/v2/ITD000000001119954/COVER/cover3d1__w337.webp", )
//
//            ),
//            title: Text('"Непобедимое Солнце"  Виктор Пелевин'),
//            subtitle: Text('1499₽'),
//            trailing: Icon(Icons.keyboard_arrow_right), // Иконка списка с права '>'
//            onTap: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => eightLayout()));
//            },
//          ),
//          ListTile(  // Наш ListTile
//            leading: Image(
//                image : NetworkImage("https://cdn.book24.ru/v2/AST000000000130381/COVER/cover3d1__w337.webp", )
//
//            ),
//            title: Text('"О дивный новый мир"  Олдос Хаксли'),
//            subtitle: Text('227 ₽'),
//            trailing: Icon(Icons.keyboard_arrow_right), // Иконка списка с права '>'
//            onTap: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => nineLayout()));
//            },
//          ),
//          ListTile(  // Наш ListTile
//            leading: Image(
//                image : NetworkImage("https://cdn.book24.ru/v2/ASE000000000847638/COVER/cover3d1__w337.webp", )
//
//            ),
//            title: Text('"Прежде чем иволга пропоет"  Елена Михалкова'),
//            subtitle: Text('392₽'),
//            trailing: Icon(Icons.keyboard_arrow_right), // Иконка списка с права '>'
//            onTap: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => tenLayout()));
//            },
//          ),
//          ListTile(  // Наш ListTile
////            //сделал чисто чтобы спиок можно было прокрутить
//          ),
//          ListTile(  // Наш ListTile
////            //сделал чисто чтобы спиок можно было прокрутить
//          ),
//
//        ])// ListView


    );
  }
}

//
//class oneLayout extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          centerTitle: true,
//          title: Text('Магазин'),
//          backgroundColor: Colors.green[600],
//
//        ),
//
//        body: new NewsBox('Краткие ответы на большие вопросы" Стивен Хокинг', '''Стивен Хокинг, величайший ученый современности, изменил наш мир. Его уход – огромная потеря для человечества. В своей финальной книге, над которой Стивен Хокинг работал практически до самого конца, великий физик делится с нами своим отношением к жизни, цивилизации, времени, Богу, к глобальным вещам, волнующим каждого из нас.
//
//
//Перед вами книга-сенсация, книга-завещание, последний труд всемирно известного физика Стивена Хокинга, в которой он подводит некий итог и высказывается по самым главным вопросам, волнующим всех.
//
//Выживет ли человечество? Должны ли мы так активно внедряться в космос? Есть ли Бог? Это лишь некоторые из вопросов, на которые отвечает Стивен Хокинг, один из величайших умов в истории, в своей финальной книге.
//
//В книгу включены воспоминания оскароносца Эдди Редмэйна, игравшего Стивена Хокинга, Нобелевского лауреата Кипа Торна и дочери Хокинга, Люси.''',
//            imageurl: 'https://cdn.book24.ru/v2/ITD000000000943518/COVER/cover3d1__w337.webp')
//    );
//  }
//}//переход к описанию товара для первого элемнта списка
//class twoLayout extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          centerTitle: true,
//          title: Text('Магазин'),
//          backgroundColor: Colors.green[600],
//
//        ),
//
//        body: new NewsBox('"Институт" Стивен Кинг', '''Еще недавно у двенадцатилетнего Люка Эллиса была вполне привычная жизнь: школа, обеды с родителями в любимой пиццерии, вечера в компании лучшего друга… Пока одним июньским утром он не просыпается в собственной комнате, вот только в ней нет окон и находится она в тщательно укрытом от всего мира месте под названием "Институт".
//
//Здесь над похищенными из разных городов детьми, обладающими даром телепатии или телекинеза, проводят жестокие эксперименты с целью максимально развить их паранормальные способности.
//
//Бежать невозможно. Будущее предопределено, и это будущее — загадочная Дальняя половина Института, откуда не возвращался еще никто…
//
//Однако Люк не намерен сдаваться. Он уверен: в любой системе есть слабое место и он дождется часа, когда сможет вновь оказаться на свободе...''',
//            imageurl: 'https://cdn.book24.ru/v2/ASE000000000849429/COVER/cover3d1__w337.webp')
//    );
//  }
//}//переход к описанию товара для второго элемнта списка
//class threeLayout extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          centerTitle: true,
//          title: Text('Магазин'),
//          backgroundColor: Colors.green[600],
//
//        ),
//
//        body: new NewsBox('"1984" Джордж Оруэлл  ', '''Своеобразный антипод второй великой антиутопии XX века - "О дивный новый мир" Олдоса Хаксли. Что, в сущности, страшнее: доведенное до абсурда "общество потребления" - или доведенное до абсолюта "общество идеи"?
//
//По Оруэллу, нет и не может быть ничего ужаснее тотальной несвободы...''',
//            imageurl: 'https://cdn.book24.ru/v2/AST000000000130417/COVER/cover3d1__w337.webp')
//    );
//  }
//}//переход к описанию товара для третьего... и т.д
//class fourLayout extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          centerTitle: true,
//          title: Text('Магазин'),
//          backgroundColor: Colors.green[600],
//
//        ),
//
//        body: new NewsBox('"Маленький принц" Антуан де Сент-Экзюпери', '''Самое знаменитое произведение Антуана де Сент-Экзюпери с авторскими рисунками. Мудрая и "человечная" сказка-притча, в которой просто и проникновенно говорится о самом важном: о дружбе и любви, о долге и верности, о красоте и нетерпимости к злу.
//
//"Все мы родом из детства", - напоминает великий француз и знакомит нас с самым загадочным и трогательным героем мировой литературы.
//
//
//Трогательное, доброе и философское произведение Антуана де Сент-Экзюпери с авторскими рисунками. Книга, адресованная детям, будет сопровождать вас всю жизнь, каждый раз раскрываясь по-новому. Это та книга, которую должен прочесть каждый человек.''',
//            imageurl: 'https://cdn.book24.ru/v2/ITD000000000840510/COVER/cover3d1__w337.webp')
//    );
//  }
//}
//class fiveLayout extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          centerTitle: true,
//          title: Text('Магазин'),
//          backgroundColor: Colors.green[600],
//
//        ),
//
//        body: new NewsBox('"Сказка о потерянном времени"  Евгений Шварц', '''Книга Е. Шварца "Сказка о потерянном времени" прекрасно подходит для первого самостоятельного чтения. Мальчики и девочки познакомятся со знаменитой сказкой о ребятах, которые из-за своей лени превратились в стариков, а ещё прочитают интересный и поучительный рассказ "Чужая девочка". Книга удобного формата, в ней большие буквы, слова с ударениями и цветные иллюстрации. Книжки серии "Читаем сами без мамы" можно взять с собой в дорогу, на прогулку и читать вместе с друзьями!
//
//Для дошкольного возраста.''',
//            imageurl: 'https://cdn.book24.ru/v2/ASE000000000831712/COVER/cover3d1__w337.webp')
//    );
//  }
//}
//class sixLayout extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          centerTitle: true,
//          title: Text('Магазин'),
//          backgroundColor: Colors.green[600],
//
//        ),
//
//        body: new NewsBox('"Маленькие женщины"  Луиза Мэй Олкотт', '''"Маленькие женщины" – семейная сага, повествующая о судьбах четырех сестер Марч – добросердечной красавицы Мег, талантливой фантазерки Джо, кроткой и нежной Бет и "сорванца в юбке" Эмми.
//
//…Гражданская война идет далеко на Юге, но ее грозные отголоски достигли и дружной семьи небогатого провинциального пастора Марча – сам он ушел на фронт полковым священником, и жена с дочерьми, как и множество других американок, день за днем живут в страхе трагических известий. Однако никакая война не в силах помешать девочкам взрослеть и превращаться в юных девушек. Девушек с их обычными и трогательными девичьими мечтами и надеждами, радостями, горестями и, конечно, первой любовью…''',
//            imageurl: 'https://cdn.book24.ru/v2/ASE000000000845725/COVER/cover3d1__w337.webp')
//    );
//  }
//}
//class sevenLayout extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          centerTitle: true,
//          title: Text('Магазин'),
//          backgroundColor: Colors.green[600],
//
//        ),
//
//        body: new NewsBox('"Мастер и Маргарита"  Михаил Афанасьевич Булгаков', '''Бессмертное, загадочное и остроумное "Евангелие от Сатаны" Михаила Булгакова.
//
//Роман, уникальный в российской литературе ХХ столетия. Трудно себе представить, какое влияние он оказал на мировую культуру.
//
//На основе "Мастера и Маргариты" снимались и продолжают сниматься фильмы и телесериалы, это произведение легло в основу оперы, симфонии, рок-оперы, его иллюстрировали самые знаменитые художники и фотографы.
//
//Достаточно перечислить лишь немногих создателей произведений, посвященных шедевру Булгакова и им вдохновленных: Анджей Вайда, Эннио Морриконе, Мик Джаггер, Дэвид Боуи.
//
//Чем же заворожила столь разных творческих личностей история о дьяволе и его свите, почтивших своим присутствием Москву 1930-х, о прокураторе Иудеи всаднике Понтии Пилате и нищем философе Иешуа Га-Ноцри, о талантливом и несчастном Мастере и его прекрасной и верной возлюбленной Маргарите?..
//
//Причины прочитать:
//
//1. Культовый роман – один из самых изучаемых, получивший множество трактовок.
//
//2. Многоплановое повествование – каждая сюжетная линия могла стать отдельным произведением.
//
//3. Яркая и острая сатира автора никогда не потеряет своей актуальности.
//
//4. Любовь Мастера и Маргариты – один из самых трагических и знаменитых образов в русской литературе.
//
//5. Роман, над которым автор работал до самой смерти, но так не завершил – произведение, с которым связано множество мистических историй, не менее загадочных, чем описанные Булгаковым.''',
//            imageurl: 'https://cdn.book24.ru/v2/ASE000000000702013/COVER/cover3d1__w337.webp')
//    );
//  }
//}
//class eightLayout extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          centerTitle: true,
//          title: Text('Магазин'),
//          backgroundColor: Colors.green[600],
//
//        ),
//
//        body: new NewsBox('"Непобедимое Солнце"  Виктор Пелевин', '''Причины купить:
//
//· Подарочное издание новинки Виктора Пелевина – двойная радость для поклонников автора.
//
//· Приятный сюрприз другу или подарок самому себе – премиальное издание в особом оформлении.
//
//· Суперобложка, цветной обрез, ляссе – удобно, практично и ярко. Такая книга станет не просто жемчужиной домашней библиотеки, но и отличным подарком для библиотеки друзей или коллег.
//
//· Тираж ограничен – торопитесь попасть в число избранных.
//
//Саша - продвинутая московская блондинка. Ей тридцатник, вируса на горизонте еще нет, и она уезжает в путешествие, обещанное ей на индийской горе Аруначале лично Шивой.
//
//Саша встретит историков-некроэмпатов, римских принцепсов, американских корпоративных анархистов, турецких филологов-суфиев, российских шестнадцатых референтов, кубинских тихарей и секс-работниц - и других интересных людей (и не только). Но самое главное, она прикоснется к тайне тайн - и увидит, откуда и как возникает то, что Илон Маск называет компьютерной симуляцией, а Святая Церковь - Мiром Божьим.
//
//Какой стала Саша после встречи с тайной, вы узнаете из книги. Какой стала тайна после встречи с Сашей, вы уже немного в курсе и так.
//
//
//''',
//            imageurl: 'https://cdn.book24.ru/v2/ITD000000001119954/COVER/cover3d1__w337.webp')
//    );
//  }
//}
//class nineLayout extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          centerTitle: true,
//          title: Text('Магазин'),
//          backgroundColor: Colors.green[600],
//
//        ),
//
//        body: new NewsBox('"О дивный новый мир"  Олдос Хаксли', '''"О дивный новый мир" — изысканная и остроумная антиутопия о генетически программируемом "обществе потребления", в котором разворачивается трагическая история Дикаря — "Гамлета" этого мира.''',
//            imageurl: 'https://cdn.book24.ru/v2/AST000000000130381/COVER/cover3d1__w337.webp')
//    );
//  }
//}
//class tenLayout extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          centerTitle: true,
//          title: Text('Магазин'),
//          backgroundColor: Colors.green[600],
//
//        ),
//
//        body: new NewsBox('"Прежде чем иволга пропоет"  Елена Михалкова', '''Ей обещали, что это тихое место.
//
//Ей обещали, что она спокойно отдохнет.
//
//Карелия. Озеро. Благоустроенные коттеджи.
//
//Всего десять туристов.
//
//На золотом крыльце сидели:
//
//Лжец,
//
//Беглец,
//
//Охотник,
//
//Убийца,
//
//Жертва.
//
//Ее не предупредили только об одном: придется выбрать, кем ты будешь.
//
//
//''',
//            imageurl: 'https://cdn.book24.ru/v2/ASE000000000847638/COVER/cover3d1__w337.webp')
//    );
//  }
//}





class oneLayout extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Магазин'),
          backgroundColor: Colors.green[600],

        ),

        body: new NewsBox('', '''''',
            imageurl: '')
    );
  }
}//переход к описанию товара для первого элемнта списка