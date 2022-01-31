import 'package:flutter/services.dart';
import 'package:khadok_application_8/models/dhaka_model.dart';
import 'package:khadok_application_8/models/food_model.dart';
import 'package:khadok_application_8/models/frego_model.dart';
import 'package:khadok_application_8/models/green_model.dart';
import 'package:khadok_application_8/models/hello_model.dart';
import 'package:khadok_application_8/models/hungry_model.dart';
import 'package:khadok_application_8/models/image.dart';
import 'package:khadok_application_8/models/kari_model.dart';
import 'package:khadok_application_8/models/nobabi_model.dart';
import 'package:khadok_application_8/models/noumi_model.dart';
import 'package:khadok_application_8/models/radhuni_model.dart';
import 'package:khadok_application_8/models/silver_model.dart';

class AppRepo {
  static Future<List<ImageModel>> getImage() async {
    final respons = await rootBundle.loadString('assets/json/jomor_image.json');
    print(respons);
    if (respons == null) {
      return [];
    } else {
      return imageModelFromJson(respons);
    }
  }
}

class AppRepoKari {
  static Future<List<KariModel>> getImage() async {
    final respons = await rootBundle.loadString('assets/json/kari_image.json');
    print(respons);

    if (respons == null) {
      return [];
    } else {
      return kariModelFromJson(respons);
    }
  }
}

class AppRepoGreen {
  static Future<List<GreenModel>> getImage() async {
    final respons = await rootBundle.loadString('assets/json/green_image.json');
    print(respons);
    if (respons == null) {
      return [];
    } else {
      return greenModelFromJson(respons);
    }
  }
}

class AppRepoNoumi {
  static Future<List<NoumiModel>> getImage() async {
    final respons = await rootBundle.loadString('assets/json/noumi.json');
    print(respons);
    if (respons == null) {
      return [];
    } else {
      return noumiModelFromJson(respons);
    }
  }
}

class AppRepoNobabi {
  static Future<List<NobabiModel>> getImage() async {
    final respons = await rootBundle.loadString('assets/json/nobabi.json');
    print(respons);
    if (respons == null) {
      return [];
    } else {
      return nobabiModelFromJson(respons);
    }
  }
}

class AppRepoHungry {
  static Future<List<HungryModel>> getImage() async {
    final respons = await rootBundle.loadString('assets/json/hungry.json');
    print(respons);
    if (respons == null) {
      return [];
    } else {
      return hungryModelFromJson(respons);
    }
  }
}

class AppRepoSilver {
  static Future<List<SilverModel>> getImage() async {
    final respons = await rootBundle.loadString('assets/json/silver.json');
    print(respons);
    if (respons == null) {
      return [];
    } else {
      return silverModelFromJson(respons);
    }
  }
}

class AppRepoDhaka {
  static Future<List<DhakaModel>> getImage() async {
    final respons = await rootBundle.loadString('assets/json/dhaka.json');
    print(respons);
    if (respons == null) {
      return [];
    } else {
      return dhakaModelFromJson(respons);
    }
  }
}

class AppRepoHello {
  static Future<List<HelloModel>> getImage() async {
    final respons = await rootBundle.loadString('assets/json/hello.json');
    print(respons);
    if (respons == null) {
      return [];
    } else {
      return helloModelFromJson(respons);
    }
  }
}

class AppRepoFrego {
  static Future<List<FregoModel>> getImage() async {
    final respons = await rootBundle.loadString('assets/json/frego.json');
    print(respons);
    if (respons == null) {
      return [];
    } else {
      return fregoModelFromJson(respons);
    }
  }
}

class AppRepoFood {
  static Future<List<FoodModel>> getImage() async {
    final respons = await rootBundle.loadString('assets/json/food.json');
    print(respons);
    if (respons == null) {
      return [];
    } else {
      return foodModelFromJson(respons);
    }
  }
}

class AppRepoRadhuni {
  static Future<List<RadhuniModel>> getImage() async {
    final respons = await rootBundle.loadString('assets/json/raduni_link.json');
    print(respons);
    if (respons == null) {
      return [];
    } else {
      return radhuniModelFromJson(respons);
    }
  }
}
