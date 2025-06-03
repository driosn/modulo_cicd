
import 'package:freezed_annotation/freezed_annotation.dart';

enum AutoPayOptionTypes{
  @JsonValue(0) empty(), 
  @JsonValue(1) fixedAmount(), 
  @JsonValue(2) fullAmount(), 
  @JsonValue(3) fullAmountNotExceed()
  }