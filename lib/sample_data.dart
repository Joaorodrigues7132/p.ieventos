class SampleData {
  List<Map<String, dynamic>> get data =>
      sampleDataRows.map((row) => row.values).toList();

  final List<SampleDataRow> sampleDataRows = [
    SampleDataRow.fromList([
      '001',
      'Trident',
      'Internet Explorer 4.0',
      'Win 95+',
      '4',
      'X',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '002',
      'Trident',
      'Internet Explorer 5.0',
      'Win 95+',
      '5',
      'C',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '003',
      'Trident',
      'Internet Explorer 5.5',
      'Win 95+',
      '5.5',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '004',
      'Trident',
      'Internet Explorer 6',
      'Win 98+',
      '6',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '005',
      'Trident',
      'Internet Explorer 7',
      'Win XP SP2+',
      '7',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '006',
      'Trident',
      'AOL browser (AOL desktop)',
      'Win XP',
      '6',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '007',
      'Gecko',
      'Firefox 1.0',
      'Win 98+ / OSX.2+',
      '1.7',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '008',
      'Gecko',
      'Firefox 1.5',
      'Win 98+ / OSX.2+',
      '1.8',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '009',
      'Gecko',
      'Firefox 2.0',
      'Win 98+ / OSX.2+',
      '1.8',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '010',
      'Gecko',
      'Firefox 3.0',
      'Win 2k+ / OSX.3+',
      '1.9',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '011',
      'Gecko',
      'Camino 1.0',
      'OSX.2+',
      '1.8',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '012',
      'Gecko',
      'Camino 1.5',
      'OSX.3+',
      '1.8',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '013',
      'Gecko',
      'Netscape 7.2',
      'Win 95+ / Mac OS 8.6-9.2',
      '1.7',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '014',
      'Gecko',
      'Netscape Browser 8',
      'Win 98SE+',
      '1.7',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '015',
      'Gecko',
      'Netscape Navigator 9',
      'Win 98+ / OSX.2+',
      '1.8',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '016',
      'Gecko',
      'Mozilla 1.0',
      'Win 95+ / OSX.1+',
      '1',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '017',
      'Gecko',
      'Mozilla 1.1',
      'Win 95+ / OSX.1+',
      '1.1',
      'A',
      '2020-10-10 13:30:30',
    ]),
    SampleDataRow.fromList([
      '018',
      'Gecko',
      'Mozilla 1.2',
      'Win 95+ / OSX.1+',
      '1.2',
      'A',
      '2020-10-10 13:30:30',
    ]),
  ];
}

class SampleDataRow {
  SampleDataRow._({
    required this.id,
    required this.renderingEngine,
    required this.browser,
    required this.platform,
    required this.engineVersion,
    required this.cssGrade,
    required this.dateTime,
  });

  factory SampleDataRow.fromList(List<String> values) {
    return SampleDataRow._(
      id: values[0],
      renderingEngine: values[1],
      browser: values[2],
      platform: values[3],
      engineVersion: values[4],
      cssGrade: values[5],
      dateTime: DateTime.parse(values[6]),
    );
  }

  final String id;
  final String renderingEngine;
  final String browser;
  final String platform;
  final String engineVersion;
  final String cssGrade;
  final DateTime dateTime;

  Map<String, dynamic> get values {
    return {
      'id': id,
      'renderingEngine': renderingEngine,
      'browser': browser,
      'platform': platform,
      'engineVersion': engineVersion,
      'cssGrade': cssGrade,
      'dateTime': dateTime,
    };
  }
}
