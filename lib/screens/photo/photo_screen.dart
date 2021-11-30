import 'dart:io';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inzynierka/bloc/photo_bloc/photo_bloc.dart';
import 'package:inzynierka/models/camera/classifier_chart_series.dart';

class PhotoPage extends StatefulWidget {
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.grey,
        child: BlocBuilder<PhotoBloc, PhotoState>(
          builder: (context, state) {
            return Column(
              children: [
                _buildTopWidget(),
                const SizedBox(
                  height: 20,
                ),
                _buildImageWidget(state),
                const SizedBox(
                  height: 20,
                ),
                _buildBottomWidget(state)
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildTopWidget() {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          )),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            'Wybierz źródło zdjęcia',
            style: GoogleFonts.notoSans(fontWeight: FontWeight.w600, letterSpacing: 0.2, fontSize: 18),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [_buildButtonWidget(true), _buildButtonWidget(false)],
          )
        ],
      ),
    );
  }

  Widget _buildBottomWidget(PhotoState state) {
    return state.classifierResultsNew.isNotEmpty
        ? Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 2.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          state.classifierResultsNew.first.label,
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset((MediaQuery.of(context).size.width / 5), 0),
                      child: charts.PieChart<int>(_buildChartSeries(state),
                          animate: true,
                          defaultRenderer: charts.ArcRendererConfig(
                            arcWidth: 60,
                            arcRendererDecorators: [charts.ArcLabelDecorator()],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )
        : SizedBox();
  }

  List<charts.Series<ClassifierChartSeries, int>> _buildChartSeries(PhotoState state) {
    List<ClassifierChartSeries> chartSeries = [];
    for (var i = 0; i < state.classifierResultsNew.length; i++) {
      final result = state.classifierResultsNew[i];
      chartSeries.add(ClassifierChartSeries(i, result.label, (result.confidence * 100.0).toInt()));
    }
    return [
      charts.Series<ClassifierChartSeries, int>(
        id: 'Klasyfikacja',
        data: chartSeries,
        domainFn: (result, _) => result.index,

        measureFn: (result, _) => result.percent,
        labelAccessorFn: (result, _) => result.label,
      )
    ];
  }

  Widget _buildImageWidget(PhotoState state) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      child: state.photo != null ? Image.file(state.photo!) : SizedBox(),
    );
  }

  Widget _buildButtonWidget(bool isCamera) {
    return GestureDetector(
      onTap: () {
        _uploadPhoto(isCamera);
      },
      child: Container(
        width: 115,
        height: 45,
        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(isCamera ? "APARAT" : "GALERIA",
              style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                letterSpacing: 0.2,
                color: Colors.white,
              )),
        ),
      ),
    );
  }

  void _uploadPhoto(bool isCamera) async {
    XFile? selectedFile = await ImagePicker().pickImage(source: isCamera ? ImageSource.camera : ImageSource.gallery);
    if (selectedFile != null) {
      File file = File(selectedFile.path);
      context.read<PhotoBloc>().add(PhotoEvent.uploadPhoto(photo: file));
    }
  }
}
