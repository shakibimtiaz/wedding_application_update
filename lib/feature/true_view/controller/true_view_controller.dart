import 'package:get/get.dart';

import '../../../core/const/image_path.dart';

class TrueViewController extends GetxController{
  var items = [
    {
      'title': 'Item 1',
      'price': '\$20',
      'name': 'John Doe',
      'image': ImagePath.bride1,
    },
    {
      'title': 'Item 2',
      'price': '\$30',
      'name': 'Jane Smith',
      'image': ImagePath.couple1,
    },
    {
      'title': 'Item 3',
      'price': '\$25',
      'name': 'Sam Wilson',
      'image': ImagePath.couple2,
    },
    {
      'title': 'Item 4',
      'price': '\$40',
      'name': 'Anna Lee',
      'image': ImagePath.bride1,
    },
    {
      'title': 'Item 5',
      'price': '\$50',
      'name': 'Peter Pan',
      'image': ImagePath.couple2,
    },
    {
      'title': 'Item 6',
      'price': '\$35',
      'name': 'Mary Jane',
      'image': ImagePath.bride1,
    },
  ].obs;
}