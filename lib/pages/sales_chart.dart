import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SalesChart extends StatefulWidget {
  @override
  _SalesChartState createState() => _SalesChartState();
}

class _SalesChartState extends State<SalesChart> {
  List<charts.Series<Task, String>> _seriesData;
  _generateData() {
    var Data = [
      Task('Jan', 20, HexColor("#FF0000")),
      Task('Feb', 30.8, HexColor("#3366cc")),
      Task('Mar', 35.8, HexColor("#ff00ff")),
      Task('Apr', 45.8, HexColor("#ff9900")),
      Task('May', 25.8, HexColor("#0000ff")),
      Task('Jun', 15.8, HexColor("#660033")),
      Task('Jul', 35.8, HexColor("#660066")),
      Task('Aug', 75.8, HexColor("#336699")),
      Task('Sep', 65.8, HexColor("#009900")),
      Task('Oct', 33.8, HexColor("#000066")),
      Task('Nov', 34.8, HexColor("#669999")),
      Task('Dec', 12.8, HexColor("#cc3300")),
    ];

    _seriesData.add(
      //for pie Chart
      charts.Series(
        data: Data,
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorvalue),
        id: 'Monthly Sales',
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',

        //for bargraph
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorvalue),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = List<charts.Series<Task, String>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: HexColor("#660099"),
            title: Text("Sales Chart"),
            bottom: TabBar(
              indicatorColor: Colors.redAccent,
              tabs: [
                Tab(
                  icon: Icon(FontAwesomeIcons.chartBar),
                ),
                Tab(
                  icon: Icon(FontAwesomeIcons.chartPie),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Monthly Sales',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            barGroupingType: charts.BarGroupingType.grouped,
                            //behaviors: [new charts.SeriesLegend()],
                            animationDuration: Duration(seconds: 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "time spent",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Expanded(
                          child: charts.PieChart(
                            _seriesData,
                            animate: true,
                            animationDuration: Duration(seconds: 5),
                            behaviors: [
                              charts.DatumLegend(
                                outsideJustification:
                                    charts.OutsideJustification.endDrawArea,
                                horizontalFirst: false,
                                desiredMaxRows: 2,
                                cellPadding:
                                    EdgeInsets.only(right: 4.0, bottom: 4.0),
                                entryTextStyle: charts.TextStyleSpec(
                                    color: charts
                                        .MaterialPalette.purple.shadeDefault,
                                    fontFamily: 'Georgia',
                                    fontSize: 11),
                              ),
                            ],
                            defaultRenderer: charts.ArcRendererConfig(
                                arcWidth: 100,
                                arcRendererDecorators: [
                                  charts.ArcLabelDecorator(
                                      labelPosition:
                                          charts.ArcLabelPosition.inside),
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Task {
  String task;
  double taskvalue;
  HexColor colorvalue;

  Task(this.task, this.taskvalue, this.colorvalue);
}
