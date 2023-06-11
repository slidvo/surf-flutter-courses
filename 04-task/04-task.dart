//
// Задание – ООО "Травка - муравка"
// Вы владелец международных сельскохозяйственных угодий ООО "Травка - муравка". Данные о ваших территорий хранятся в двух Map по странам — одну вы вели до 2010 года сами, после вы наняли профессионала — менеджера по хранению распределенных данных сельскохозяйственных угодий.
//
// Ему не понравилась структура первой Map, поэтому он решил создать новую, и записывать информацию о новых угодьях в нее, а территории приобретенные до 2010 параллельно поддерживались в старой Map (почему он не перенес данные из первой Map за столько лет — история умалчивает). Поэтому каждый раз при работе с этими данными приходится учитывать два источника — `mapBefore2010` и `mapAfter2010`.
//
// Вам пришла очередная задача. Для аналитика потребовалось узнать средний возраст всей техники и средний возраст техники для 50% самой старой техники (нужно отсортировать всю технику по возрасту, взять 50% самой старой техники и вычислить их средний возраст).
//
// При этом помните, что одна единица техники может быть приписана к нескольким территориям.
//
// Для решения задачи воспользуйтесь знаниями, полученными по каждой из коллекций в этом модуле.

enum Countries { brazil, russia, turkish, spain, japan }

class Territory {
  int areaInHectare;
  List<String> crops;
  List<AgriculturalMachinery> machineries;

  Territory(
    this.areaInHectare,
    this.crops,
    this.machineries,
  );

  @override
  String toString() {
    return "$areaInHectare $crops $machineries";
  }
}

class AgriculturalMachinery {
  final String id;
  final DateTime releaseDate;

  AgriculturalMachinery(
    this.id,
    this.releaseDate,
  );

// Переопределяем оператор "==", что бы сравнивать объекты по значению
  @override
  bool operator ==(Object? other) {
    if (other is AgriculturalMachinery &&
        other.id == id &&
        other.releaseDate == releaseDate) {
      return true;
    }

    return false;
  }

  @override
  int get hashCode => id.hashCode ^ releaseDate.hashCode;

  @override
  String toString() {
    return "    $id, $releaseDate";
  }
}

final mapBefore2010 = <Countries, List<Territory>>{
  Countries.brazil: [
    Territory(
      34,
      ['Кукуруза'],
      [
        AgriculturalMachinery(
          'Трактор Степан',
          DateTime(2001),
        ),
        AgriculturalMachinery(
          'Культиватор Сережа',
          DateTime(2007),
        ),
      ],
    ),
  ],
  Countries.russia: [
    Territory(
      14,
      ['Картофель'],
      [
        AgriculturalMachinery(
          'Трактор Гена',
          DateTime(1993),
        ),
        AgriculturalMachinery(
          'Гранулятор Антон',
          DateTime(2009),
        ),
      ],
    ),
    Territory(
      19,
      ['Лук'],
      [
        AgriculturalMachinery(
          'Трактор Гена',
          DateTime(1993),
        ),
        AgriculturalMachinery(
          'Дробилка Маша',
          DateTime(1990),
        ),
      ],
    ),
  ],
  Countries.turkish: [
    Territory(
      43,
      ['Хмель'],
      [
        AgriculturalMachinery(
          'Комбаин Василий',
          DateTime(1998),
        ),
        AgriculturalMachinery(
          'Сепаратор Марк',
          DateTime(2005),
        ),
      ],
    ),
  ],
};

final mapAfter2010 = {
  Countries.turkish: [
    Territory(
      22,
      ['Чай'],
      [
        AgriculturalMachinery(
          'Каток Кирилл',
          DateTime(2018),
        ),
        AgriculturalMachinery(
          'Комбаин Василий',
          DateTime(1998),
        ),
      ],
    ),
  ],
  Countries.japan: [
    Territory(
      3,
      ['Рис'],
      [
        AgriculturalMachinery(
          'Гидравлический молот Лена',
          DateTime(2014),
        ),
      ],
    ),
  ],
  Countries.spain: [
    Territory(
      29,
      ['Арбузы'],
      [
        AgriculturalMachinery(
          'Мини-погрузчик Максим',
          DateTime(2011),
        ),
      ],
    ),
    Territory(
      11,
      ['Табак'],
      [
        AgriculturalMachinery(
          'Окучник Саша',
          DateTime(2010),
        ),
      ],
    ),
  ],
};