import 'package:mysql1/mysql1.dart';

class Mysql {
  // Static connection settings
  static String host = '10.0.2.2';
  static String user = 'root';
  static String password = '1004255509';
  static String db = 'company';
  static int port = 3306;

  // Private constructor to prevent direct instantiation
  Mysql._();

  // Factory method to create a new Mysql instance
  factory Mysql() => Mysql._();

  // Method to open a connection to the database
  Future<MySqlConnection> getConnection() async {
    var settings = ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db,
    );

    return await MySqlConnection.connect(settings);
  }


    //await connection.close();
  }

