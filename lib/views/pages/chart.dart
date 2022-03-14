import 'dart:convert';
import 'dart:math';

import 'package:emp_performance_tracker_flut/helper/http_helper.dart';
import 'package:emp_performance_tracker_flut/views/model/emoployee_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class ChartApp extends StatefulWidget {
  const ChartApp({Key? key}) : super(key: key);

  @override
  State<ChartApp> createState() => _ChartAppState();
}

class _ChartAppState extends State<ChartApp> {
  List<EmployeeRating> employeeRatings = [];
  @override
  void initState() {
    getEmployeeInfo().then((res) {
      Map<String, dynamic> map = jsonDecode(res.body);
      // print("asdfasdfadsf");
      //print(map);

      var list = map['Data'] as List<dynamic>;

      employeeRatings = list.map((e) => EmployeeRating.fromMap(e)).toList();

      int scors = 0;
      for (int i = 0; i <= employeeRatings.length - 1; i++) {
        EmployeeRating empr = employeeRatings[i];

        scors += empr.requirUnderstandingScore +
            empr.regardingTrainingScore +
            empr.equiSoftHandleScore +
            empr.rulsPolicyFolloScore +
            empr.knoledgeShareWithCoworkersScore +
            empr.coworkersTreatedRespectScore +
            empr.acceptsCriticismScore +
            empr.teamPlayerScore +
            empr.teameResourcesShareScore +
            empr.executesTaskScore +
            empr.acceptsMistakeScore +
            empr.canWorkWithoutSuperviseScore +
            empr.capableTakingAnyDecisionScore +
            empr.highPressureSiruationManageScore +
            empr.motivateCoworkersToFinishScore;
        print(empr.requirUnderstandingScore);
      }

      print(scors);
      // print(employeeRatings);
    });
    super.initState();
  }

  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  @override
  Widget build(BuildContext context) {
    final List<ChartData1> histogramData = <ChartData1>[
      ChartData1(5.250),
      ChartData1(7.750),
      ChartData1(0.0),
      ChartData1(8.275),
      ChartData1(9.750),
      ChartData1(7.750),
      ChartData1(8.275),
      ChartData1(6.250),
      ChartData1(5.750),
      ChartData1(5.250),
      ChartData1(23.000),
      ChartData1(26.500),
      ChartData1(26.500),
      ChartData1(27.750),
      ChartData1(25.025),
      ChartData1(26.500),
      ChartData1(28.025),
      ChartData1(29.250),
      ChartData1(26.750),
      ChartData1(27.250),
      ChartData1(26.250),
      ChartData1(25.250),
      ChartData1(34.500),
      ChartData1(25.625),
      ChartData1(25.500),
      ChartData1(26.625),
      ChartData1(36.275),
      ChartData1(36.250),
      ChartData1(26.875),
      ChartData1(40.000),
      ChartData1(43.000),
      ChartData1(46.500),
      ChartData1(47.750),
      ChartData1(45.025),
      ChartData1(56.500),
      ChartData1(56.500),
      ChartData1(58.025),
      ChartData1(59.250),
      ChartData1(56.750),
      ChartData1(57.250),
      ChartData1(46.250),
      ChartData1(55.250),
      ChartData1(44.500),
      ChartData1(45.525),
      ChartData1(55.500),
      ChartData1(46.625),
      ChartData1(46.275),
      ChartData1(56.250),
      ChartData1(46.875),
      ChartData1(43.000),
      ChartData1(46.250),
      ChartData1(55.250),
      ChartData1(44.500),
      ChartData1(45.425),
      ChartData1(55.500),
      ChartData1(56.625),
      ChartData1(46.275),
      ChartData1(56.250),
      ChartData1(46.875),
      ChartData1(43.000),
      ChartData1(46.250),
      ChartData1(55.250),
      ChartData1(44.500),
      ChartData1(45.425),
      ChartData1(55.500),
      ChartData1(46.625),
      ChartData1(56.275),
      ChartData1(46.250),
      ChartData1(56.875),
      ChartData1(41.000),
      ChartData1(63.000),
      ChartData1(66.500),
      ChartData1(67.750),
      ChartData1(65.025),
      ChartData1(66.500),
      ChartData1(76.500),
      ChartData1(78.025),
      ChartData1(79.250),
      ChartData1(76.750),
      ChartData1(77.250),
      ChartData1(66.250),
      ChartData1(75.250),
      ChartData1(74.500),
      ChartData1(65.625),
      ChartData1(75.500),
      ChartData1(76.625),
      ChartData1(76.275),
      ChartData1(66.250),
      ChartData1(66.875),
      ChartData1(80.000),
      ChartData1(85.250),
      ChartData1(87.750),
      ChartData1(89.000),
      ChartData1(88.275),
      ChartData1(89.750),
      ChartData1(97.750),
      ChartData1(98.275),
      ChartData1(96.250),
      ChartData1(95.750),
      ChartData1(95.250)
    ];

    final List<ChartData> chartData = [
      ChartData('David', 25),
      ChartData('Steve', 38),
      ChartData('Jack', 34),
      ChartData('Others', 52)
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Charts"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 15),
          child: Center(
            child: Column(children: [
              //Initialize the chart widget
              SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  // Chart title
                  title: ChartTitle(
                      text: 'Employee Performance Ratings   ',
                      textStyle: TextStyle(fontSize: 20)),
                  // Enable legend

                  legend: Legend(isVisible: true),
                  // Enable tooltip
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <ChartSeries<_SalesData, String>>[
                    LineSeries<_SalesData, String>(
                        dataSource: data,
                        xValueMapper: (_SalesData sales, _) => sales.year,
                        yValueMapper: (_SalesData sales, _) => sales.sales,
                        name: 'Sales',
                        // Enable data label
                        dataLabelSettings: DataLabelSettings(isVisible: true))
                  ]),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   //Initialize the spark charts widget
              //   child: SfSparkLineChart.custom(
              //     //Enable the trackball
              //     trackball: SparkChartTrackball(
              //         activationMode: SparkChartActivationMode.tap),
              //     //Enable marker
              //     marker: SparkChartMarker(
              //         displayMode: SparkChartMarkerDisplayMode.all),
              //     //Enable data label
              //     labelDisplayMode: SparkChartLabelDisplayMode.all,
              //     xValueMapper: (int index) => data[index].year,
              //     yValueMapper: (int index) => data[index].sales,
              //     dataCount: 5,
              //   ),
              // ),
              Container(
                  child: SfCircularChart(
                      series: <CircularSeries>[
                        PieSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
// Radius of pie
                            explode: true,
// First segment will be exploded on initial rendering
                            explodeIndex: 1,

                            groupMode: CircularChartGroupMode.point,
// As the grouping mode is point, 2 points will be grouped
                            groupTo: 2,
                            radius: '50%'
                        )
                      ]
                  )
              ),

              Expanded(
                  child: Container(
                      child: SfCartesianChart(series: <ChartSeries>[
                HistogramSeries<ChartData1, double>(
                    dataSource: histogramData,
                    showNormalDistributionCurve: true,
                    curveColor: const Color.fromRGBO(192, 108, 132, 1),
                    binInterval: 20,
                    yValueMapper: (ChartData1 data, _) => data.y)
              ]))),
            ]),
          ),
        ));


  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class ChartData1 {
  ChartData1(this.y);
  final double y;
}



// final List<ChartData> chartData = [
//   ChartData('David', 25),
//   ChartData('Steve', 38),
//   ChartData('Jack', 34),
//   ChartData('Others', 52)
// ];
// return Scaffold(
// appBar: AppBar(
// title: Text("Charts"),
// ),
// body: Center(
// child: Container(
// child: SfCircularChart(
// series: <CircularSeries>[
// PieSeries<ChartData, String>(
// dataSource: chartData,
// xValueMapper: (ChartData data, _) => data.x,
// yValueMapper: (ChartData data, _) => data.y,
// // Radius of pie
// explode: true,
// // First segment will be exploded on initial rendering
// explodeIndex: 1,
//
// groupMode: CircularChartGroupMode.point,
// // As the grouping mode is point, 2 points will be grouped
// groupTo: 2,
// radius: '50%'
// )
// ]
// )
// ),
//
//
// )
// );
// }
// }
class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;

}
