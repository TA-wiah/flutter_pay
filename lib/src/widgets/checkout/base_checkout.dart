import 'package:flutter/material.dart';
import 'package:paystack_pay/src/common/paystack.dart';
import 'package:paystack_pay/src/models/checkout_response.dart';
import 'package:paystack_pay/src/widgets/animated_widget.dart';
import 'package:paystack_pay/src/widgets/checkout/checkout_widget.dart';

abstract class BaseCheckoutMethodState<T extends StatefulWidget>
    extends BaseAnimatedState<T> {
  final OnResponse<CheckoutResponse> onResponse;
  final CheckoutMethod _method;

  BaseCheckoutMethodState(this.onResponse, this._method);

  CheckoutMethod get method => _method;
}
