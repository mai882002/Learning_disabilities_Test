class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Write this number 96253",
    [
      Answer("twenty five thousands three hundreds sixty nine", false),
      Answer("Ninety six thousands two hundred fifty three", true),
      Answer("fifty six thousands nine hundreds thirty two", false),
      Answer("sixty nine thousands five hundreds thirty two", false),
    ],
  ));

  list.add(Question(
    "Write this number 25369",
    [
      Answer("twenty five thousands three hundreds sixty nine", true),
      Answer("Ninety six thousands two hundred fifty three", false),
      Answer("fifty six thousands nine hundreds thirty two", false),
      Answer("sixty nine thousands five hundreds thirty two", false),
    ],
  ));

  list.add(Question(
    "Write this number 69532",
    [
      Answer("twenty five thousands three hundreds sixty nine", false),
      Answer("Ninety six thousands two hundred fifty three", false),
      Answer("fifty six thousands nine hundreds thirty two", false),
      Answer("sixty nine thousands five hundreds thirty two", true),
    ],
  ));

  list.add(Question(
    "Write this number 56932",
    [
      Answer("twenty five thousands three hundreds sixty nine", false),
      Answer("Ninety six thousands two hundred fifty three", false),
      Answer("fifty six thousands nine hundreds thirty two", true),
      Answer("sixty nine thousands five hundreds thirty two", false),
    ],
  ));

  list.add(Question(
    "Find the product of 396 x4 ",
    [
      Answer("1987", false),
      Answer("1584", true),
      Answer("9514", false),
      Answer("1741", false),
    ],
  ));

  list.add(Question(
    "Find the product of 357 x 18",
    [
      Answer("1987", false),
      Answer("1584", false),
      Answer("1741", false),
      Answer("6426 ", true),
    ],
  ));

  list.add(Question(
    "Find the  quotient of 989 ÷23  ",
    [
      Answer("12", false),
      Answer("43", true),
      Answer("41", false),
      Answer("26 ", false),
    ],
  ));

  list.add(Question(
    "Find the sum of 3489 + 2984",
    [
      Answer("9512", false),
      Answer("7843", false),
      Answer("8441", false),
      Answer("6473 ", true),
    ],
  ));

  list.add(Question(
    "Find the sum of 5361 + 1749",
    [
      Answer("6512", false),
      Answer("7843", false),
      Answer("7110", true),
      Answer("6473 ", false),
    ],
  ));

  list.add(Question(
    "Find the difference of 9871 – 2563",
    [
      Answer("6512", false),
      Answer("7843", false),
      Answer("7110", false),
      Answer("7308", true),
    ],
  ));

  list.add(Question(
    "Find the difference of 7490 – 3486",
    [
      Answer("4004", true),
      Answer("7843", false),
      Answer("7110", false),
      Answer("7308", false),
    ],
  ));

  list.add(Question(
    "write the following number Seven tenths",
    [
      Answer("0.7", true),
      Answer("7", false),
      Answer("700", false),
      Answer("70", false),
    ],
  ));

  list.add(Question(
    "write the following number fourty two and sixteen hundredths",
    [
      Answer("24", false),
      Answer("42", false),
      Answer("42.16", true),
      Answer("42.7", false),
    ],
  ));

  list.add(Question(
    "write the following number nine hundreds twenty five thousandths",
    [
      Answer("0.847", false),
      Answer("987", false),
      Answer("0.789", false),
      Answer("0.925", true),
    ],
  ));

  list.add(Question(
    "write the following number nineteen hundredths",
    [
      Answer("0.19", true),
      Answer("9", false),
      Answer("89", false),
      Answer("0.5", false),
    ],
  ));

  list.add(Question(
    "compare between 3490 (    ) 9340  by using >,<,= or >=",
    [
      Answer(">", false),
      Answer("<", true),
      Answer("=", false),
      Answer(">=", false),
    ],
  ));

  list.add(Question(
    "compare between 888 (    ) 899  by using >,<,= or >=",
    [
      Answer("<", true),
      Answer(">", false),
      Answer("=", false),
      Answer(">=", false),
    ],
  ));

  list.add(Question(
    "compare between 54901 (    ) 154902 by using >,<,= or <=",
    [
      Answer("<", false),
      Answer(">", true),
      Answer("=", false),
      Answer("<=", false),
    ],
  ));

  list.add(Question(
    "compare between 102 (    ) 120  by using >,<,= or >=",
    [
      Answer(">", false),
      Answer("=", false),
      Answer(">=", false),
      Answer("<", true),
    ],
  ));

  list.add(Question(
    "write in standard form six hundred twenty-seven thousands five hundred sixty-three",
    [
      Answer("78549", false),
      Answer("975664", false),
      Answer("753957", false),
      Answer("625563", true),
    ],
  ));

  list.add(Question(
    "write in standard form 3 tens =...",
    [
      Answer("745", false),
      Answer("944", false),
      Answer("30", true),
      Answer("405", false),
    ],
  ));

  list.add(Question(
    "write in standard form 5 hundreds =...",
    [
      Answer("745", false),
      Answer("50", true),
      Answer("944", false),
      Answer("405", false),
    ],
  ));

  list.add(Question(
    "write in standard form 7000 = ... tens",
    [
      Answer("700", true),
      Answer("745", false),
      Answer("944", false),
      Answer("405", false),
    ],
  ));

  list.add(Question(
    "find the area of square with side length 6 cm ... ",
    [
      Answer("36 cm²", true),
      Answer("21 cm", false),
      Answer("34 cm²", false),
      Answer("28 cm²", false),
    ],
  ));

  list.add(Question(
    "Calculate the perimeter of triangle with side length 7 , 5 , 9 ... ",
    [
      Answer("36 cm²", false),
      Answer("21 cm", true),
      Answer("34 cm²", false),
      Answer("28 cm²", false),
    ],
  ));

  list.add(Question(
    "Calculate the perimeter of rectangle with dimensions 6 and 11 ... ",
    [
      Answer("36 cm²", false),
      Answer("21 cm", false),
      Answer("34 cm²", true),
      Answer("28 cm²", false),
    ],
  ));

  list.add(Question(
    "Calculate the area of rectangle with dimensions 4 , 7 ... ",
    [
      Answer("36 cm²", false),
      Answer("21 cm", false),
      Answer("34 cm²", false),
      Answer("28 cm²", true),
    ],
  ));

  list.add(Question(
    "complete 7 % = ...  ",
    [
      Answer("10", false),
      Answer("80%", false),
      Answer("7/100", true),
      Answer("13", false),
    ],
  ));

  list.add(Question(
    "complete 39 ÷ 3 = ...  ",
    [
      Answer("10", false),
      Answer("80%", false),
      Answer("7/100", false),
      Answer("13", true),
    ],
  ));

  list.add(Question(
    "complete 5 x 2 = ...  ",
    [
      Answer("10", true),
      Answer("80%", false),
      Answer("7/100", false),
      Answer("13", false),
    ],
  ));

  list.add(Question(
    "complete 80/100 = ...% ",
    [
      Answer("10", false),
      Answer("80%", true),
      Answer("7/100", false),
      Answer("13", false),
    ],
  ));

  list.add(Question(
    "find the quotient and remainder of 153 ÷ 8  ",
    [
      Answer("19 r 1", true),
      Answer("13 r 2", false),
      Answer("70 r 3", false),
      Answer("10 r 4", false),
    ],
  ));

  list.add(Question(
    "The factors of 24 ",
    [
      Answer("13,2", false),
      Answer("70,3", false),
      Answer("10,4", false),
      Answer("1,2,3,4,6,8,12,24", true),
    ],
  ));

  list.add(Question(
    "The multiples of 4 are",
    [
      Answer("0,4,8,12,16,20", true),
      Answer("70,3", false),
      Answer("10,4", false),
      Answer("1,2,3,4,6,8,12,24", false),
    ],
  ));

  list.add(Question(
    "subtracting 123 from 451 is ",
    [
      Answer("360", false),
      Answer("219", false),
      Answer("328", true),
      Answer("280", false),
    ],
  ));

  list.add(Question(
    "Adding 10 to the product of 7 and 5 is ",
    [
      Answer("360", false),
      Answer("219", false),
      Answer("328", false),
      Answer("45", true),
    ],
  ));

  list.add(Question(
    "100 times greater than 26 is ",
    [
      Answer("3660", false),
      Answer("2600", true),
      Answer("3728", false),
      Answer("453", false),
    ],
  ));

  list.add(Question(
    "The remainder of dividing 84 by 9 ",
    [
      Answer("6", false),
      Answer("26", false),
      Answer("3", true),
      Answer("5", false),
    ],
  ));

  list.add(Question(
    "add mentally 25 + 9  ",
    [
      Answer("34", true),
      Answer("16", false),
      Answer("95", false),
      Answer("11", false),
    ],
  ));

  list.add(Question(
    "add mentally 9 + 7 ",
    [
      Answer("88", false),
      Answer("16", true),
      Answer("37", false),
      Answer("98", false),
    ],
  ));

  list.add(Question(
    "Subtract 39 – 8 ",
    [
      Answer("36", true),
      Answer("21", false),
      Answer("31", true),
      Answer("28", false),
    ],
  ));

  list.add(Question(
    "Subtract 17 – 9 ",
    [
      Answer("8", true),
      Answer("7", false),
      Answer("98", false),
      Answer("74", false),
    ],
  ));

  list.add(Question(
    "convert 3m = ………… Km ",
    [
      Answer("0.3", false),
      Answer("3", false),
      Answer("3000", true),
      Answer("300000", false),
    ],
  ));

  list.add(Question(
    "convert 4 cm = ……… Mm ",
    [
      Answer("0.4", false),
      Answer("400000", false),
      Answer("4", false),
      Answer("40", true),
    ],
  ));

  list.add(Question(
    "convert …………kg = 7000 gm  ",
    [
      Answer("7000", true),
      Answer("7", true),
      Answer("0.7", false),
      Answer("0.07", false),
    ],
  ));

  list.add(Question(
    "convert 4 km = ………cm  ",
    [
      Answer("4000", true),
      Answer("0.4", false),
      Answer("40", false),
      Answer("4", false),
    ],
  ));

  list.add(Question(
    "the volume of cube with edge length 6cm is ………… ",
    [
      Answer("30 cm³", false),
      Answer("7000 cm³", false),
      Answer("216 cm³", true),
      Answer("40 cm³", false),
    ],
  ));

  list.add(Question(
    "3 x > 4 y which amount is greater ………… ",
    [
      Answer("3y", false),
      Answer("4y", false),
      Answer("40", false),
      Answer("3x", true),
    ],
  ));

  list.add(Question(
    "find the result of 3 x 5 – 10 ………… ",
    [
      Answer("5", true),
      Answer("7", false),
      Answer("15", false),
      Answer("10", false),
    ],
  ));

  list.add(Question(
    "find the result of 6 – 4 ÷ 2 ………… ",
    [
      Answer("5", false),
      Answer("3", false),
      Answer("4", true),
      Answer("7", false),
    ],
  ));

  list.add(Question(
    "find the G.C.F and L.C.M for the numbers 18 and 24 ",
    [
      Answer("G.C.F = 4 ,L.C.M = 72", false),
      Answer("G.C.F = 6 ,L.C.M = 72", true),
      Answer("G.C.F = 4 ,L.C.M = 2", false),
      Answer("G.C.F = 6 ,L.C.M = 70", false),
    ],
  ));

  list.add(Question(
    "arrange  the following numbers in an ascending order : 861592 - 861542 - 865421 - 685421 ",
    [
      Answer("4361857 - 4358857 - 4341857 - 1432857", false),
      Answer(" 861592 - 865421 - 685421 - 861542 ", false),
      Answer(" 685421 - 861542 - 861592 - 865421 ", true),
      Answer(" 865421 - 861542 - 861592 - 685421", false),
    ],
  ));

  list.add(Question(
    "arrange  the following numbers in descending order : 1432857 - 4341857 - 4361857 - 4358857 ",
    [
      Answer(" 4361857 - 4358857 - 4341857 - 1432857 ", true),
      Answer("685421 - 861542 - 861592 - 865421", false),
      Answer(" 4341857 - 1432857 - 4361857 - 4358857 ", false),
      Answer(" 865421 - 861542 - 861592 - 685421", false),
    ],
  ));

  list.add(Question(
    "( 70 + 14 ) – ( 6 x 10 ) + 20 = ... ",
    [
      Answer("24", false),
      Answer("20", false),
      Answer("34", false),
      Answer("44", true),
    ],
  ));

  list.add(Question(
    "Lareen has 100 L.E she gave to her sister 16 L.E then she bought by the remaining money 7 stories calculate the price of each story ",
    [
      Answer("21", false),
      Answer("12", true),
      Answer("34", false),
      Answer("28", false),
    ],
  ));

  list.add(Question(
    "Haysil save each month 125 L.E for 5 months . she donate by 250 l.E . How much money left with her ?  ",
    [
      Answer("625 le", false),
      Answer("200 le", false),
      Answer("375 le", true),
      Answer("340 le", false),
    ],
  ));

  list.add(Question(
    "find the area of square with side length 6 cm ... ",
    [
      Answer("36 cm²", true),
      Answer("21 cm", false),
      Answer("34 cm²", false),
      Answer("28 cm²", false),
    ],
  ));
  return list;
}
