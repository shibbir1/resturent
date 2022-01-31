import 'package:flutter/material.dart';
import 'package:khadok_application_8/models/green_model.dart';
import 'package:khadok_application_8/models/image.dart';
import 'package:khadok_application_8/models/kari_model.dart';
import 'package:khadok_application_8/models/nobabi_model.dart';
import 'package:khadok_application_8/models/noumi_model.dart';
import 'package:khadok_application_8/models/radhuni_model.dart';
import 'package:khadok_application_8/repositories/app_repo.dart';

class ImageView extends StatefulWidget {
  const ImageView({Key? key}) : super(key: key);

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  List<ImageModel> imageModel = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppRepo.getImage().then((value) {
      setState(() {
        imageModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: imageModel.length,
          itemBuilder: (context, index) {
            return Image.asset('${imageModel.elementAt(index).assetsImage}');
          }),
    );
  }
}

class KariImageView extends StatefulWidget {
  const KariImageView({Key? key}) : super(key: key);

  @override
  State<KariImageView> createState() => _KariImageViewState();
}

class _KariImageViewState extends State<KariImageView> {
  List<KariModel> kariModel = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppRepoKari.getImage().then((value) {
      setState(() {
        kariModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: kariModel.length,
          itemBuilder: (context, index) {
            return Image.asset('${kariModel.elementAt(index).assetsimage}');
          }),
    );
  }
}

class GreenImageView extends StatefulWidget {
  const GreenImageView({Key? key}) : super(key: key);

  @override
  State<GreenImageView> createState() => _GreenImageViewState();
}

class _GreenImageViewState extends State<GreenImageView> {
  List<GreenModel> greenModel = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppRepoGreen.getImage().then((value) {
      setState(() {
        greenModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: greenModel.length,
          itemBuilder: (context, index) {
            return Image.asset('${greenModel.elementAt(index).assetsimage}');
          }),
    );
  }
}

class NoumiImageView extends StatefulWidget {
  const NoumiImageView({Key? key}) : super(key: key);

  @override
  State<NoumiImageView> createState() => _NoumiImageViewState();
}

class _NoumiImageViewState extends State<NoumiImageView> {
  List<NoumiModel> noumiModel = [];
  @override
  void initState() {
    super.initState();
    AppRepoNoumi.getImage().then((value) {
      setState(() {
        noumiModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: noumiModel.length,
          itemBuilder: (context, index) {
            return Image.asset('${noumiModel.elementAt(index).assetsimage}');
          }),
    );
  }
}

class NobabiImageView extends StatefulWidget {
  const NobabiImageView({Key? key}) : super(key: key);

  @override
  State<NobabiImageView> createState() => _NobabiImageViewState();
}

class _NobabiImageViewState extends State<NobabiImageView> {
  List<NobabiModel> nobabiModel = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppRepoNobabi.getImage().then((value) {
      setState(() {
        nobabiModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: nobabiModel.length,
          itemBuilder: (context, index) {
            return Image.asset('${nobabiModel.elementAt(index).assetsimage}');
          }),
    );
  }
}

class RadhuniImageView extends StatefulWidget {
  const RadhuniImageView({Key? key}) : super(key: key);

  @override
  State<RadhuniImageView> createState() => _RadhuniImageViewState();
}

class _RadhuniImageViewState extends State<RadhuniImageView> {
  List<RadhuniModel> radhuniModel = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppRepoRadhuni.getImage().then((value) {
      setState(() {
        radhuniModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: radhuniModel.length,
          itemBuilder: (context, index) {
            return Image.asset('${radhuniModel.elementAt(index).assetsimage}');
          }),
    );
  }
}
