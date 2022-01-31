import 'package:flutter/material.dart';
import 'package:khadok_application_8/models/dhaka_model.dart';
import 'package:khadok_application_8/models/food_model.dart';
import 'package:khadok_application_8/models/frego_model.dart';
import 'package:khadok_application_8/models/hello_model.dart';
import 'package:khadok_application_8/models/hungry_model.dart';
import 'package:khadok_application_8/models/silver_model.dart';
import 'package:khadok_application_8/repositories/app_repo.dart';

class HungryImageView extends StatefulWidget {
  const HungryImageView({Key? key}) : super(key: key);

  @override
  State<HungryImageView> createState() => _HungryImageViewState();
}

class _HungryImageViewState extends State<HungryImageView> {
  List<HungryModel> hungryModel = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppRepoHungry.getImage().then((value) {
      setState(() {
        hungryModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: hungryModel.length,
          itemBuilder: (context, index) {
            return Image.asset('${hungryModel.elementAt(index).assetsimage}');
          }),
    );
  }
}

class SilverImageView extends StatefulWidget {
  const SilverImageView({Key? key}) : super(key: key);

  @override
  State<SilverImageView> createState() => _SilverImageViewState();
}

class _SilverImageViewState extends State<SilverImageView> {
  List<SilverModel> silverModel = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppRepoSilver.getImage().then((value) {
      setState(() {
        silverModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: silverModel.length,
          itemBuilder: (context, index) {
            return Image.asset('${silverModel.elementAt(index).assetsimage}');
          }),
    );
  }
}

class DhakaImageView extends StatefulWidget {
  const DhakaImageView({Key? key}) : super(key: key);

  @override
  State<DhakaImageView> createState() => _DhakaImageViewState();
}

class _DhakaImageViewState extends State<DhakaImageView> {
  List<DhakaModel> dhakaModel = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppRepoDhaka.getImage().then((value) {
      setState(() {
        dhakaModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: dhakaModel.length,
          itemBuilder: (context, index) {
            return Image.asset('${dhakaModel.elementAt(index).assetsimage}');
          }),
    );
  }
}

class HelloImageView extends StatefulWidget {
  const HelloImageView({Key? key}) : super(key: key);

  @override
  State<HelloImageView> createState() => _HelloImageViewState();
}

class _HelloImageViewState extends State<HelloImageView> {
  List<HelloModel> helloModel = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppRepoHello.getImage().then((value) {
      setState(() {
        helloModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: helloModel.length,
          itemBuilder: (context, index) {
            return Image.asset('${helloModel.elementAt(index).assetsimage}');
          }),
    );
  }
}

class FregoImageView extends StatefulWidget {
  const FregoImageView({Key? key}) : super(key: key);

  @override
  State<FregoImageView> createState() => _FregoImageViewState();
}

class _FregoImageViewState extends State<FregoImageView> {
  List<FregoModel> fregoModel = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppRepoFrego.getImage().then((value) {
      setState(() {
        fregoModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: fregoModel.length,
          itemBuilder: (context, index) {
            return Image.asset('${fregoModel.elementAt(index).assetsimage}');
          }),
    );
  }
}

class FoodImageView extends StatefulWidget {
  const FoodImageView({Key? key}) : super(key: key);

  @override
  State<FoodImageView> createState() => _FoodImageViewState();
}

class _FoodImageViewState extends State<FoodImageView> {
  List<FoodModel> foodModel = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppRepoFood.getImage().then((value) {
      setState(() {
        foodModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: foodModel.length,
          itemBuilder: (context, index) {
            return Image.asset('${foodModel.elementAt(index).assetsimage}');
          }),
    );
  }
}
