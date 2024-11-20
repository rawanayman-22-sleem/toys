
import 'package:flutter/material.dart';

abstract class Authrepoth {
  Future LoginWithGoogle();
  Future LoginWithFacebook();
  Future CompleteInformation({@required String name,
      @required String phonenumber,
      @required String address });
}