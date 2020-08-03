import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'data_chart.dart';
import 'data_map.dart';

class Datatable extends StatefulWidget {
  static String id='datatable';
  @override
  DatatableState createState() {
    return new DatatableState();
  }
}

class DatatableState extends State<Datatable> {
  Widget bodyData() => DataTable(
      onSelectAll: (b) {},
      sortColumnIndex: 1,
      sortAscending: true,
      columns: <DataColumn>[

        DataColumn(
          label: Text("Module",
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          numeric: false,
          onSort: (i, b) {
            print("$i $b");
            setState(() {
              names.sort((a, b) => a.disease.compareTo(b.disease));
            });
          },
          tooltip: "To display first name of the Name",
        ),
        DataColumn(
          label: Text("Ratings"),
          numeric: true,
          onSort: (i, b) {
            print("$i $b");
            setState(() {
              names.sort((a, b) => a.location.compareTo(b.location));
            });
          },
          tooltip: "To display last name of the Name",
        ),
        DataColumn(
          label: Text("Numbers"),
          numeric: true,
          onSort: (i, b) {
            print("$i $b");
            setState(() {
              names.sort((a, b) => a.medSold.compareTo(b.medSold));
            });
          },
          tooltip: "To display last name of the Name",
        ),
      ],
      rows: names
          .map(
            (name) => DataRow(
          cells: [
            DataCell(
              Text(name.disease),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Text(name.location),
              showEditIcon: false,
              placeholder: false,
            ),
            DataCell(
              Text(name.medSold),
              showEditIcon: false,
              placeholder: false,
            )
          ],
        ),
      )
          .toList());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module & Ratings"), backgroundColor: Hexcolor('#050F32'),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child:
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: bodyData(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: RaisedButton(
                    color: Colors.blue.shade900,
                    textColor: Colors.white,
                    splashColor: Colors.blueGrey,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Datachart()));
                    },
                    child: const Text('Graphical representation of data')
                ),
              ),
            ],
          )
      ),

//      Container(
//        child: bodyData(),
//      ),
    );
  }
}

class Name {
  String disease;
  String location;
  String medSold;

  Name({this.disease, this.location, this.medSold});
}

var names = <Name>[
  Name(disease: "Boarding and Luggage", location: "5", medSold:"1200"),
  Name(disease: "Boarding and Luggage", location: "4", medSold:"1000"),
  Name(disease: "Boarding and Luggage", location: "3", medSold:"800"),
  Name(disease: "Boarding and Luggage", location: "2", medSold:"100"),
  Name(disease: "Boarding and Luggage", location: "1", medSold:"50"),
  Name(disease: "Time and Travel", location: "5", medSold:"1000"),
  Name(disease: "Time and Travel", location: "4", medSold:"800"),
  Name(disease: "Time and Travel", location: "3", medSold:"600"),
  Name(disease: "Time and Travel", location: "2", medSold:"100"),
  Name(disease: "Time and Travel", location: "1", medSold:"50"),
  Name(disease: "AR Services", location: "5", medSold:"1600"),
  Name(disease: "AR Services", location: "4", medSold:"1000"),
  Name(disease: "AR Services", location: "3", medSold:"700"),
  Name(disease: "AR Services", location: "2", medSold:"100"),
  Name(disease: "AR Services", location: "1", medSold:"60"),
  Name(disease: "Overall Exp", location: "5", medSold:"1200"),
  Name(disease: "Overall Exp", location: "4", medSold:"1000"),
  Name(disease: "Overall Exp", location: "3", medSold:"700"),
  Name(disease: "Overall Exp", location: "2", medSold:"90"),
  Name(disease: "Overall Exp", location: "1", medSold:"40"),





];