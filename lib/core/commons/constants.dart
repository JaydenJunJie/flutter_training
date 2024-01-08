import 'package:trinity_lecture_app/domain/main_page/entities/main_page_list_object.dart';

class Constants {
  static String apiKey = ''; // use your API key
  static String dummyImg =
      'https://bs-uploads.toptal.io/blackfish-uploads/components/blog_post_page/content/cover_image_file/cover_image/1270273/regular_1708x683_0722_Flutter_Advantages_and_Benefits_Zara_Newsletter___blog__1_-82380dbb7488ae7bed69819aff0ea04c-9ef2341e8ed6d862a067c83c750630b2.png';
  static List<String> chooseSectionForStories = [
    'arts',
    'automobiles',
    'food',
    'books/review',
    'movies',
    'sports',
    'politics',
    'fashion',
    'home',
    'business',
  ];

  static List<MainPageListObject> mainPageList = [
    MainPageListObject('Dummy UI', 'Introducing basic flutter widget UI'),
    MainPageListObject('Counter Example (State Management)', 'Introducting of state management using flutter_block : Level 1'),
    MainPageListObject('Calculator Example (State Management)', 'Flutter state management using flutter_bloc to calculate simple syntax. Level: 3'),
    MainPageListObject('News App', 'API calling using free source from NYTimes'),
    MainPageListObject('To Do App', 'Create a to do list that saved in local storage using hydrated_block: Level 4'),
    MainPageListObject('title', 'subtitle'),
  ];
}
