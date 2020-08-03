import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Datachart extends StatefulWidget {
  static String id='datachart';
  final Widget child;

  Datachart({Key key, this.child}) : super(key: key);

  _DatachartState createState() => _DatachartState();
}

class _DatachartState extends State<Datachart> {
  List<charts.Series<Pollution, String>> _seriesData;
  List<charts.Series<Task, String>> _seriesPieData;
  //List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() {
    var data1 = [
      new Pollution(1980, 'Boarding & Luggage', 100),
      new Pollution(1980, 'Time & Travel', 90),
      new Pollution(1980, 'AR Service', 90),
    ];
    var data2 = [
      new Pollution(1985, 'Boarding & Luggage', 85),
      new Pollution(1980, 'Time & Travel', 80),
      new Pollution(1985, 'AR Service', 70),
    ];
    var data3 = [
      new Pollution(1985, 'Boarding & Luggage', 65),
      new Pollution(1980, 'Time & Travel', 60),
      new Pollution(1985, 'AR Service', 50),
    ];
    var data4 = [
      new Pollution(1985, 'Boarding & Luggage', 15),
      new Pollution(1980, 'Time & Travel', 10),
      new Pollution(1985, 'AR Service', 20),
    ];
    var data5 = [
      new Pollution(1985, 'Boarding & Luggage', 9),
      new Pollution(1980, 'Time & Travel', 5),
      new Pollution(1985, 'AR Service', 15),
    ];

    var piedata = [
      new Task('Time & Travel', 2.22, Color(0xff3366cc)),
      new Task('AR Service', 1.76, Color(0xff990099)),
      new Task('Boarding\nLuggage', 1.58, Color(0xff109618)),
      new Task('Overall', 1.32, Color(0xff428564)),


    ];


//    var linesalesdata = [
//      new Sales(0, 1500),
//      new Sales(1, 1100),
//      new Sales(2, 900),
//
//    ];
//    var linesalesdata1 = [
//      new Sales(0, 800),
//      new Sales(1, 1500),
//      new Sales(2, 900),
//
//    ];
//
//    var linesalesdata2 = [
//      new Sales(0,1000 ),
//      new Sales(1, 600),
//      new Sales(2, 3000),
//    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2018',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2019',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );
    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2020',
        data: data4,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff3366cc)),
      ),
    );
    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2021',
        data: data5,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990011)),
      ),
    );

    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Pollution',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );


//    _seriesLineData.add(
//      charts.Series(
//        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
//        id: 'Air Pollution',
//        data: linesalesdata,
//        domainFn: (Sales sales, _) => sales.yearval,
//        measureFn: (Sales sales, _) => sales.salesval,
//      ),
//    );
//    _seriesLineData.add(
//      charts.Series(
//        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
//        id: 'Air Pollution',
//        data: linesalesdata1,
//        domainFn: (Sales sales, _) => sales.yearval,
//        measureFn: (Sales sales, _) => sales.salesval,
//      ),
//    );
//    _seriesLineData.add(
//      charts.Series(
//        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
//        id: 'Air Pollution',
//        data: linesalesdata2,
//        domainFn: (Sales sales, _) => sales.yearval,
//        measureFn: (Sales sales, _) => sales.salesval,
//      ),
   // );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = List<charts.Series<Pollution, String>>();
    _seriesPieData = List<charts.Series<Task, String>>();
    //_seriesLineData = List<charts.Series<Sales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            //backgroundColor: Color(0xff308e1c),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(
                  icon: Icon(FontAwesomeIcons.solidChartBar),
                ),
                Tab(icon: Icon(FontAwesomeIcons.chartPie)),
                //Tab(icon: Icon(FontAwesomeIcons.chartLine)),
              ],
            ),
            title: Text('APKA RATINGS'),
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
                          'RATING - Purple - 5\nGreen- 4  Yellow - 3(in K)',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,),),
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
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          '1 Rating % with overall',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10.0,),
                        Expanded(
                          child: charts.PieChart(
                              _seriesPieData,
                              animate: true,
                              animationDuration: Duration(seconds: 5),
                              behaviors: [
                                new charts.DatumLegend(
                                  outsideJustification: charts.OutsideJustification.endDrawArea,
                                  horizontalFirst: false,
                                  desiredMaxRows: 2,
                                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                  entryTextStyle: charts.TextStyleSpec(
                                      color: charts.MaterialPalette.purple.shadeDefault,
                                      fontFamily: 'Georgia',
                                      fontSize: 11),
                                )
                              ],
                              defaultRenderer: new charts.ArcRendererConfig(
                                  arcWidth: 100,
                                  arcRendererDecorators: [
                                    new charts.ArcLabelDecorator(
                                        labelPosition: charts.ArcLabelPosition.inside)
                                  ])),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
//              Padding(
//                padding: EdgeInsets.all(8.0),
//                child: Container(
//                  child: Center(
//                    child: Column(
//                      children: <Widget>[
//                        Text(
//                          'Sales for the first 5 years',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
//                        Expanded(
//                          child: charts.LineChart(
//                              _seriesLineData,
//                              defaultRenderer: new charts.LineRendererConfig(
//                                  includeArea: true, stacked: true),
//                              animate: true,
//                              animationDuration: Duration(seconds: 5),
//                              behaviors: [
//                                new charts.ChartTitle('Years',
//                                    behaviorPosition: charts.BehaviorPosition.bottom,
//                                    titleOutsideJustification:charts.OutsideJustification.middleDrawArea),
//                                new charts.ChartTitle('Sales',
//                                    behaviorPosition: charts.BehaviorPosition.start,
//                                    titleOutsideJustification: charts.OutsideJustification.middleDrawArea),
//                                new charts.ChartTitle('Departments',
//                                  behaviorPosition: charts.BehaviorPosition.end,
//                                  titleOutsideJustification:charts.OutsideJustification.middleDrawArea,
//                                )
//                              ]
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ),
//              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Pollution {
  String place;
  int year;
  int quantity;

  Pollution(this.year, this.place, this.quantity);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}