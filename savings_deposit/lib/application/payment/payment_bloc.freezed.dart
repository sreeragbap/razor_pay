// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaymentEventTearOff {
  const _$PaymentEventTearOff();

  _StartPayment startPayment(
      {required String amount,
      required String orderName,
      required String customerName,
      required String phoneNumber,
      required String email,
      required String orderId}) {
    return _StartPayment(
      amount: amount,
      orderName: orderName,
      customerName: customerName,
      phoneNumber: phoneNumber,
      email: email,
      orderId: orderId,
    );
  }

  _GenerateOrderId generateOrderId(
      {required int amount, required String generatedKey}) {
    return _GenerateOrderId(
      amount: amount,
      generatedKey: generatedKey,
    );
  }

  _GenerateOrdreKey generateOrdreKey() {
    return const _GenerateOrdreKey();
  }

  _PaymentCancelled paymentCancelled() {
    return const _PaymentCancelled();
  }

  _ExternalError externalError() {
    return const _ExternalError();
  }

  _LogPaymentDetails logPaymentDetails(
      {required int firmId,
      required int branchId,
      required int moduleId,
      required String refId,
      required String reqId,
      required String docId,
      required String customerId,
      required double transactioAmount,
      required double refAmount,
      required int gateWayMode,
      required int paymentMode,
      required int applicationFlag,
      required double prevCharge,
      required double serviceCharge,
      required int agentCode,
      required String customerName}) {
    return _LogPaymentDetails(
      firmId: firmId,
      branchId: branchId,
      moduleId: moduleId,
      refId: refId,
      reqId: reqId,
      docId: docId,
      customerId: customerId,
      transactioAmount: transactioAmount,
      refAmount: refAmount,
      gateWayMode: gateWayMode,
      paymentMode: paymentMode,
      applicationFlag: applicationFlag,
      prevCharge: prevCharge,
      serviceCharge: serviceCharge,
      agentCode: agentCode,
      customerName: customerName,
    );
  }

  _LogPaymentStatus logPaymentStatus(
      {required String refId,
      required String reqId,
      required String custId,
      required String docId,
      required double transactionAmount,
      required String gatewayTransId,
      required String confirmString,
      required String errorString,
      required String resString,
      required String resTransId,
      required double refAmount,
      required int gatewayMode,
      required int paymentMode,
      required int applicationFlag,
      required double prevCharge,
      required double serCharge,
      required int agentMode}) {
    return _LogPaymentStatus(
      refId: refId,
      reqId: reqId,
      custId: custId,
      docId: docId,
      transactionAmount: transactionAmount,
      gatewayTransId: gatewayTransId,
      confirmString: confirmString,
      errorString: errorString,
      resString: resString,
      resTransId: resTransId,
      refAmount: refAmount,
      gatewayMode: gatewayMode,
      paymentMode: paymentMode,
      applicationFlag: applicationFlag,
      prevCharge: prevCharge,
      serCharge: serCharge,
      agentMode: agentMode,
    );
  }
}

/// @nodoc
const $PaymentEvent = _$PaymentEventTearOff();

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String amount,
            String orderName,
            String customerName,
            String phoneNumber,
            String email,
            String orderId)
        startPayment,
    required TResult Function(int amount, String generatedKey) generateOrderId,
    required TResult Function() generateOrdreKey,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartPayment value) startPayment,
    required TResult Function(_GenerateOrderId value) generateOrderId,
    required TResult Function(_GenerateOrdreKey value) generateOrdreKey,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res> implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  final PaymentEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentEvent) _then;
}

/// @nodoc
abstract class _$StartPaymentCopyWith<$Res> {
  factory _$StartPaymentCopyWith(
          _StartPayment value, $Res Function(_StartPayment) then) =
      __$StartPaymentCopyWithImpl<$Res>;
  $Res call(
      {String amount,
      String orderName,
      String customerName,
      String phoneNumber,
      String email,
      String orderId});
}

/// @nodoc
class __$StartPaymentCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements _$StartPaymentCopyWith<$Res> {
  __$StartPaymentCopyWithImpl(
      _StartPayment _value, $Res Function(_StartPayment) _then)
      : super(_value, (v) => _then(v as _StartPayment));

  @override
  _StartPayment get _value => super._value as _StartPayment;

  @override
  $Res call({
    Object? amount = freezed,
    Object? orderName = freezed,
    Object? customerName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? orderId = freezed,
  }) {
    return _then(_StartPayment(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      orderName: orderName == freezed
          ? _value.orderName
          : orderName // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartPayment implements _StartPayment {
  const _$_StartPayment(
      {required this.amount,
      required this.orderName,
      required this.customerName,
      required this.phoneNumber,
      required this.email,
      required this.orderId});

  @override
  final String amount;
  @override
  final String orderName;
  @override
  final String customerName;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String orderId;

  @override
  String toString() {
    return 'PaymentEvent.startPayment(amount: $amount, orderName: $orderName, customerName: $customerName, phoneNumber: $phoneNumber, email: $email, orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartPayment &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.orderName, orderName) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.orderId, orderId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(orderName),
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(orderId));

  @JsonKey(ignore: true)
  @override
  _$StartPaymentCopyWith<_StartPayment> get copyWith =>
      __$StartPaymentCopyWithImpl<_StartPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String amount,
            String orderName,
            String customerName,
            String phoneNumber,
            String email,
            String orderId)
        startPayment,
    required TResult Function(int amount, String generatedKey) generateOrderId,
    required TResult Function() generateOrdreKey,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return startPayment(
        amount, orderName, customerName, phoneNumber, email, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return startPayment?.call(
        amount, orderName, customerName, phoneNumber, email, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (startPayment != null) {
      return startPayment(
          amount, orderName, customerName, phoneNumber, email, orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartPayment value) startPayment,
    required TResult Function(_GenerateOrderId value) generateOrderId,
    required TResult Function(_GenerateOrdreKey value) generateOrdreKey,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return startPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return startPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (startPayment != null) {
      return startPayment(this);
    }
    return orElse();
  }
}

abstract class _StartPayment implements PaymentEvent {
  const factory _StartPayment(
      {required String amount,
      required String orderName,
      required String customerName,
      required String phoneNumber,
      required String email,
      required String orderId}) = _$_StartPayment;

  String get amount;
  String get orderName;
  String get customerName;
  String get phoneNumber;
  String get email;
  String get orderId;
  @JsonKey(ignore: true)
  _$StartPaymentCopyWith<_StartPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GenerateOrderIdCopyWith<$Res> {
  factory _$GenerateOrderIdCopyWith(
          _GenerateOrderId value, $Res Function(_GenerateOrderId) then) =
      __$GenerateOrderIdCopyWithImpl<$Res>;
  $Res call({int amount, String generatedKey});
}

/// @nodoc
class __$GenerateOrderIdCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements _$GenerateOrderIdCopyWith<$Res> {
  __$GenerateOrderIdCopyWithImpl(
      _GenerateOrderId _value, $Res Function(_GenerateOrderId) _then)
      : super(_value, (v) => _then(v as _GenerateOrderId));

  @override
  _GenerateOrderId get _value => super._value as _GenerateOrderId;

  @override
  $Res call({
    Object? amount = freezed,
    Object? generatedKey = freezed,
  }) {
    return _then(_GenerateOrderId(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      generatedKey: generatedKey == freezed
          ? _value.generatedKey
          : generatedKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GenerateOrderId implements _GenerateOrderId {
  const _$_GenerateOrderId({required this.amount, required this.generatedKey});

  @override
  final int amount;
  @override
  final String generatedKey;

  @override
  String toString() {
    return 'PaymentEvent.generateOrderId(amount: $amount, generatedKey: $generatedKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenerateOrderId &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.generatedKey, generatedKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(generatedKey));

  @JsonKey(ignore: true)
  @override
  _$GenerateOrderIdCopyWith<_GenerateOrderId> get copyWith =>
      __$GenerateOrderIdCopyWithImpl<_GenerateOrderId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String amount,
            String orderName,
            String customerName,
            String phoneNumber,
            String email,
            String orderId)
        startPayment,
    required TResult Function(int amount, String generatedKey) generateOrderId,
    required TResult Function() generateOrdreKey,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return generateOrderId(amount, generatedKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return generateOrderId?.call(amount, generatedKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (generateOrderId != null) {
      return generateOrderId(amount, generatedKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartPayment value) startPayment,
    required TResult Function(_GenerateOrderId value) generateOrderId,
    required TResult Function(_GenerateOrdreKey value) generateOrdreKey,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return generateOrderId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return generateOrderId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (generateOrderId != null) {
      return generateOrderId(this);
    }
    return orElse();
  }
}

abstract class _GenerateOrderId implements PaymentEvent {
  const factory _GenerateOrderId(
      {required int amount, required String generatedKey}) = _$_GenerateOrderId;

  int get amount;
  String get generatedKey;
  @JsonKey(ignore: true)
  _$GenerateOrderIdCopyWith<_GenerateOrderId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GenerateOrdreKeyCopyWith<$Res> {
  factory _$GenerateOrdreKeyCopyWith(
          _GenerateOrdreKey value, $Res Function(_GenerateOrdreKey) then) =
      __$GenerateOrdreKeyCopyWithImpl<$Res>;
}

/// @nodoc
class __$GenerateOrdreKeyCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements _$GenerateOrdreKeyCopyWith<$Res> {
  __$GenerateOrdreKeyCopyWithImpl(
      _GenerateOrdreKey _value, $Res Function(_GenerateOrdreKey) _then)
      : super(_value, (v) => _then(v as _GenerateOrdreKey));

  @override
  _GenerateOrdreKey get _value => super._value as _GenerateOrdreKey;
}

/// @nodoc

class _$_GenerateOrdreKey implements _GenerateOrdreKey {
  const _$_GenerateOrdreKey();

  @override
  String toString() {
    return 'PaymentEvent.generateOrdreKey()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GenerateOrdreKey);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String amount,
            String orderName,
            String customerName,
            String phoneNumber,
            String email,
            String orderId)
        startPayment,
    required TResult Function(int amount, String generatedKey) generateOrderId,
    required TResult Function() generateOrdreKey,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return generateOrdreKey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return generateOrdreKey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (generateOrdreKey != null) {
      return generateOrdreKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartPayment value) startPayment,
    required TResult Function(_GenerateOrderId value) generateOrderId,
    required TResult Function(_GenerateOrdreKey value) generateOrdreKey,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return generateOrdreKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return generateOrdreKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (generateOrdreKey != null) {
      return generateOrdreKey(this);
    }
    return orElse();
  }
}

abstract class _GenerateOrdreKey implements PaymentEvent {
  const factory _GenerateOrdreKey() = _$_GenerateOrdreKey;
}

/// @nodoc
abstract class _$PaymentCancelledCopyWith<$Res> {
  factory _$PaymentCancelledCopyWith(
          _PaymentCancelled value, $Res Function(_PaymentCancelled) then) =
      __$PaymentCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$PaymentCancelledCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements _$PaymentCancelledCopyWith<$Res> {
  __$PaymentCancelledCopyWithImpl(
      _PaymentCancelled _value, $Res Function(_PaymentCancelled) _then)
      : super(_value, (v) => _then(v as _PaymentCancelled));

  @override
  _PaymentCancelled get _value => super._value as _PaymentCancelled;
}

/// @nodoc

class _$_PaymentCancelled implements _PaymentCancelled {
  const _$_PaymentCancelled();

  @override
  String toString() {
    return 'PaymentEvent.paymentCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PaymentCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String amount,
            String orderName,
            String customerName,
            String phoneNumber,
            String email,
            String orderId)
        startPayment,
    required TResult Function(int amount, String generatedKey) generateOrderId,
    required TResult Function() generateOrdreKey,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return paymentCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return paymentCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (paymentCancelled != null) {
      return paymentCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartPayment value) startPayment,
    required TResult Function(_GenerateOrderId value) generateOrderId,
    required TResult Function(_GenerateOrdreKey value) generateOrdreKey,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return paymentCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return paymentCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (paymentCancelled != null) {
      return paymentCancelled(this);
    }
    return orElse();
  }
}

abstract class _PaymentCancelled implements PaymentEvent {
  const factory _PaymentCancelled() = _$_PaymentCancelled;
}

/// @nodoc
abstract class _$ExternalErrorCopyWith<$Res> {
  factory _$ExternalErrorCopyWith(
          _ExternalError value, $Res Function(_ExternalError) then) =
      __$ExternalErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExternalErrorCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements _$ExternalErrorCopyWith<$Res> {
  __$ExternalErrorCopyWithImpl(
      _ExternalError _value, $Res Function(_ExternalError) _then)
      : super(_value, (v) => _then(v as _ExternalError));

  @override
  _ExternalError get _value => super._value as _ExternalError;
}

/// @nodoc

class _$_ExternalError implements _ExternalError {
  const _$_ExternalError();

  @override
  String toString() {
    return 'PaymentEvent.externalError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ExternalError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String amount,
            String orderName,
            String customerName,
            String phoneNumber,
            String email,
            String orderId)
        startPayment,
    required TResult Function(int amount, String generatedKey) generateOrderId,
    required TResult Function() generateOrdreKey,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return externalError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return externalError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (externalError != null) {
      return externalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartPayment value) startPayment,
    required TResult Function(_GenerateOrderId value) generateOrderId,
    required TResult Function(_GenerateOrdreKey value) generateOrdreKey,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return externalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return externalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (externalError != null) {
      return externalError(this);
    }
    return orElse();
  }
}

abstract class _ExternalError implements PaymentEvent {
  const factory _ExternalError() = _$_ExternalError;
}

/// @nodoc
abstract class _$LogPaymentDetailsCopyWith<$Res> {
  factory _$LogPaymentDetailsCopyWith(
          _LogPaymentDetails value, $Res Function(_LogPaymentDetails) then) =
      __$LogPaymentDetailsCopyWithImpl<$Res>;
  $Res call(
      {int firmId,
      int branchId,
      int moduleId,
      String refId,
      String reqId,
      String docId,
      String customerId,
      double transactioAmount,
      double refAmount,
      int gateWayMode,
      int paymentMode,
      int applicationFlag,
      double prevCharge,
      double serviceCharge,
      int agentCode,
      String customerName});
}

/// @nodoc
class __$LogPaymentDetailsCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements _$LogPaymentDetailsCopyWith<$Res> {
  __$LogPaymentDetailsCopyWithImpl(
      _LogPaymentDetails _value, $Res Function(_LogPaymentDetails) _then)
      : super(_value, (v) => _then(v as _LogPaymentDetails));

  @override
  _LogPaymentDetails get _value => super._value as _LogPaymentDetails;

  @override
  $Res call({
    Object? firmId = freezed,
    Object? branchId = freezed,
    Object? moduleId = freezed,
    Object? refId = freezed,
    Object? reqId = freezed,
    Object? docId = freezed,
    Object? customerId = freezed,
    Object? transactioAmount = freezed,
    Object? refAmount = freezed,
    Object? gateWayMode = freezed,
    Object? paymentMode = freezed,
    Object? applicationFlag = freezed,
    Object? prevCharge = freezed,
    Object? serviceCharge = freezed,
    Object? agentCode = freezed,
    Object? customerName = freezed,
  }) {
    return _then(_LogPaymentDetails(
      firmId: firmId == freezed
          ? _value.firmId
          : firmId // ignore: cast_nullable_to_non_nullable
              as int,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int,
      moduleId: moduleId == freezed
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as int,
      refId: refId == freezed
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      reqId: reqId == freezed
          ? _value.reqId
          : reqId // ignore: cast_nullable_to_non_nullable
              as String,
      docId: docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      transactioAmount: transactioAmount == freezed
          ? _value.transactioAmount
          : transactioAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refAmount: refAmount == freezed
          ? _value.refAmount
          : refAmount // ignore: cast_nullable_to_non_nullable
              as double,
      gateWayMode: gateWayMode == freezed
          ? _value.gateWayMode
          : gateWayMode // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMode: paymentMode == freezed
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as int,
      applicationFlag: applicationFlag == freezed
          ? _value.applicationFlag
          : applicationFlag // ignore: cast_nullable_to_non_nullable
              as int,
      prevCharge: prevCharge == freezed
          ? _value.prevCharge
          : prevCharge // ignore: cast_nullable_to_non_nullable
              as double,
      serviceCharge: serviceCharge == freezed
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as double,
      agentCode: agentCode == freezed
          ? _value.agentCode
          : agentCode // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LogPaymentDetails implements _LogPaymentDetails {
  const _$_LogPaymentDetails(
      {required this.firmId,
      required this.branchId,
      required this.moduleId,
      required this.refId,
      required this.reqId,
      required this.docId,
      required this.customerId,
      required this.transactioAmount,
      required this.refAmount,
      required this.gateWayMode,
      required this.paymentMode,
      required this.applicationFlag,
      required this.prevCharge,
      required this.serviceCharge,
      required this.agentCode,
      required this.customerName});

  @override
  final int firmId;
  @override
  final int branchId;
  @override
  final int moduleId;
  @override
  final String refId;
  @override
  final String reqId;
  @override
  final String docId;
  @override
  final String customerId;
  @override
  final double transactioAmount;
  @override
  final double refAmount;
  @override
  final int gateWayMode;
  @override
  final int paymentMode;
  @override
  final int applicationFlag;
  @override
  final double prevCharge;
  @override
  final double serviceCharge;
  @override
  final int agentCode;
  @override
  final String customerName;

  @override
  String toString() {
    return 'PaymentEvent.logPaymentDetails(firmId: $firmId, branchId: $branchId, moduleId: $moduleId, refId: $refId, reqId: $reqId, docId: $docId, customerId: $customerId, transactioAmount: $transactioAmount, refAmount: $refAmount, gateWayMode: $gateWayMode, paymentMode: $paymentMode, applicationFlag: $applicationFlag, prevCharge: $prevCharge, serviceCharge: $serviceCharge, agentCode: $agentCode, customerName: $customerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogPaymentDetails &&
            const DeepCollectionEquality().equals(other.firmId, firmId) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality().equals(other.moduleId, moduleId) &&
            const DeepCollectionEquality().equals(other.refId, refId) &&
            const DeepCollectionEquality().equals(other.reqId, reqId) &&
            const DeepCollectionEquality().equals(other.docId, docId) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.transactioAmount, transactioAmount) &&
            const DeepCollectionEquality().equals(other.refAmount, refAmount) &&
            const DeepCollectionEquality()
                .equals(other.gateWayMode, gateWayMode) &&
            const DeepCollectionEquality()
                .equals(other.paymentMode, paymentMode) &&
            const DeepCollectionEquality()
                .equals(other.applicationFlag, applicationFlag) &&
            const DeepCollectionEquality()
                .equals(other.prevCharge, prevCharge) &&
            const DeepCollectionEquality()
                .equals(other.serviceCharge, serviceCharge) &&
            const DeepCollectionEquality().equals(other.agentCode, agentCode) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firmId),
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(moduleId),
      const DeepCollectionEquality().hash(refId),
      const DeepCollectionEquality().hash(reqId),
      const DeepCollectionEquality().hash(docId),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(transactioAmount),
      const DeepCollectionEquality().hash(refAmount),
      const DeepCollectionEquality().hash(gateWayMode),
      const DeepCollectionEquality().hash(paymentMode),
      const DeepCollectionEquality().hash(applicationFlag),
      const DeepCollectionEquality().hash(prevCharge),
      const DeepCollectionEquality().hash(serviceCharge),
      const DeepCollectionEquality().hash(agentCode),
      const DeepCollectionEquality().hash(customerName));

  @JsonKey(ignore: true)
  @override
  _$LogPaymentDetailsCopyWith<_LogPaymentDetails> get copyWith =>
      __$LogPaymentDetailsCopyWithImpl<_LogPaymentDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String amount,
            String orderName,
            String customerName,
            String phoneNumber,
            String email,
            String orderId)
        startPayment,
    required TResult Function(int amount, String generatedKey) generateOrderId,
    required TResult Function() generateOrdreKey,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return logPaymentDetails(
        firmId,
        branchId,
        moduleId,
        refId,
        reqId,
        docId,
        customerId,
        transactioAmount,
        refAmount,
        gateWayMode,
        paymentMode,
        applicationFlag,
        prevCharge,
        serviceCharge,
        agentCode,
        customerName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return logPaymentDetails?.call(
        firmId,
        branchId,
        moduleId,
        refId,
        reqId,
        docId,
        customerId,
        transactioAmount,
        refAmount,
        gateWayMode,
        paymentMode,
        applicationFlag,
        prevCharge,
        serviceCharge,
        agentCode,
        customerName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (logPaymentDetails != null) {
      return logPaymentDetails(
          firmId,
          branchId,
          moduleId,
          refId,
          reqId,
          docId,
          customerId,
          transactioAmount,
          refAmount,
          gateWayMode,
          paymentMode,
          applicationFlag,
          prevCharge,
          serviceCharge,
          agentCode,
          customerName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartPayment value) startPayment,
    required TResult Function(_GenerateOrderId value) generateOrderId,
    required TResult Function(_GenerateOrdreKey value) generateOrdreKey,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return logPaymentDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return logPaymentDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (logPaymentDetails != null) {
      return logPaymentDetails(this);
    }
    return orElse();
  }
}

abstract class _LogPaymentDetails implements PaymentEvent {
  const factory _LogPaymentDetails(
      {required int firmId,
      required int branchId,
      required int moduleId,
      required String refId,
      required String reqId,
      required String docId,
      required String customerId,
      required double transactioAmount,
      required double refAmount,
      required int gateWayMode,
      required int paymentMode,
      required int applicationFlag,
      required double prevCharge,
      required double serviceCharge,
      required int agentCode,
      required String customerName}) = _$_LogPaymentDetails;

  int get firmId;
  int get branchId;
  int get moduleId;
  String get refId;
  String get reqId;
  String get docId;
  String get customerId;
  double get transactioAmount;
  double get refAmount;
  int get gateWayMode;
  int get paymentMode;
  int get applicationFlag;
  double get prevCharge;
  double get serviceCharge;
  int get agentCode;
  String get customerName;
  @JsonKey(ignore: true)
  _$LogPaymentDetailsCopyWith<_LogPaymentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogPaymentStatusCopyWith<$Res> {
  factory _$LogPaymentStatusCopyWith(
          _LogPaymentStatus value, $Res Function(_LogPaymentStatus) then) =
      __$LogPaymentStatusCopyWithImpl<$Res>;
  $Res call(
      {String refId,
      String reqId,
      String custId,
      String docId,
      double transactionAmount,
      String gatewayTransId,
      String confirmString,
      String errorString,
      String resString,
      String resTransId,
      double refAmount,
      int gatewayMode,
      int paymentMode,
      int applicationFlag,
      double prevCharge,
      double serCharge,
      int agentMode});
}

/// @nodoc
class __$LogPaymentStatusCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements _$LogPaymentStatusCopyWith<$Res> {
  __$LogPaymentStatusCopyWithImpl(
      _LogPaymentStatus _value, $Res Function(_LogPaymentStatus) _then)
      : super(_value, (v) => _then(v as _LogPaymentStatus));

  @override
  _LogPaymentStatus get _value => super._value as _LogPaymentStatus;

  @override
  $Res call({
    Object? refId = freezed,
    Object? reqId = freezed,
    Object? custId = freezed,
    Object? docId = freezed,
    Object? transactionAmount = freezed,
    Object? gatewayTransId = freezed,
    Object? confirmString = freezed,
    Object? errorString = freezed,
    Object? resString = freezed,
    Object? resTransId = freezed,
    Object? refAmount = freezed,
    Object? gatewayMode = freezed,
    Object? paymentMode = freezed,
    Object? applicationFlag = freezed,
    Object? prevCharge = freezed,
    Object? serCharge = freezed,
    Object? agentMode = freezed,
  }) {
    return _then(_LogPaymentStatus(
      refId: refId == freezed
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
      reqId: reqId == freezed
          ? _value.reqId
          : reqId // ignore: cast_nullable_to_non_nullable
              as String,
      custId: custId == freezed
          ? _value.custId
          : custId // ignore: cast_nullable_to_non_nullable
              as String,
      docId: docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionAmount: transactionAmount == freezed
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as double,
      gatewayTransId: gatewayTransId == freezed
          ? _value.gatewayTransId
          : gatewayTransId // ignore: cast_nullable_to_non_nullable
              as String,
      confirmString: confirmString == freezed
          ? _value.confirmString
          : confirmString // ignore: cast_nullable_to_non_nullable
              as String,
      errorString: errorString == freezed
          ? _value.errorString
          : errorString // ignore: cast_nullable_to_non_nullable
              as String,
      resString: resString == freezed
          ? _value.resString
          : resString // ignore: cast_nullable_to_non_nullable
              as String,
      resTransId: resTransId == freezed
          ? _value.resTransId
          : resTransId // ignore: cast_nullable_to_non_nullable
              as String,
      refAmount: refAmount == freezed
          ? _value.refAmount
          : refAmount // ignore: cast_nullable_to_non_nullable
              as double,
      gatewayMode: gatewayMode == freezed
          ? _value.gatewayMode
          : gatewayMode // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMode: paymentMode == freezed
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as int,
      applicationFlag: applicationFlag == freezed
          ? _value.applicationFlag
          : applicationFlag // ignore: cast_nullable_to_non_nullable
              as int,
      prevCharge: prevCharge == freezed
          ? _value.prevCharge
          : prevCharge // ignore: cast_nullable_to_non_nullable
              as double,
      serCharge: serCharge == freezed
          ? _value.serCharge
          : serCharge // ignore: cast_nullable_to_non_nullable
              as double,
      agentMode: agentMode == freezed
          ? _value.agentMode
          : agentMode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LogPaymentStatus implements _LogPaymentStatus {
  const _$_LogPaymentStatus(
      {required this.refId,
      required this.reqId,
      required this.custId,
      required this.docId,
      required this.transactionAmount,
      required this.gatewayTransId,
      required this.confirmString,
      required this.errorString,
      required this.resString,
      required this.resTransId,
      required this.refAmount,
      required this.gatewayMode,
      required this.paymentMode,
      required this.applicationFlag,
      required this.prevCharge,
      required this.serCharge,
      required this.agentMode});

  @override
  final String refId;
  @override
  final String reqId;
  @override
  final String custId;
  @override
  final String docId;
  @override
  final double transactionAmount;
  @override
  final String gatewayTransId;
  @override
  final String confirmString;
  @override
  final String errorString;
  @override
  final String resString;
  @override
  final String resTransId;
  @override
  final double refAmount;
  @override
  final int gatewayMode;
  @override
  final int paymentMode;
  @override
  final int applicationFlag;
  @override
  final double prevCharge;
  @override
  final double serCharge;
  @override
  final int agentMode;

  @override
  String toString() {
    return 'PaymentEvent.logPaymentStatus(refId: $refId, reqId: $reqId, custId: $custId, docId: $docId, transactionAmount: $transactionAmount, gatewayTransId: $gatewayTransId, confirmString: $confirmString, errorString: $errorString, resString: $resString, resTransId: $resTransId, refAmount: $refAmount, gatewayMode: $gatewayMode, paymentMode: $paymentMode, applicationFlag: $applicationFlag, prevCharge: $prevCharge, serCharge: $serCharge, agentMode: $agentMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogPaymentStatus &&
            const DeepCollectionEquality().equals(other.refId, refId) &&
            const DeepCollectionEquality().equals(other.reqId, reqId) &&
            const DeepCollectionEquality().equals(other.custId, custId) &&
            const DeepCollectionEquality().equals(other.docId, docId) &&
            const DeepCollectionEquality()
                .equals(other.transactionAmount, transactionAmount) &&
            const DeepCollectionEquality()
                .equals(other.gatewayTransId, gatewayTransId) &&
            const DeepCollectionEquality()
                .equals(other.confirmString, confirmString) &&
            const DeepCollectionEquality()
                .equals(other.errorString, errorString) &&
            const DeepCollectionEquality().equals(other.resString, resString) &&
            const DeepCollectionEquality()
                .equals(other.resTransId, resTransId) &&
            const DeepCollectionEquality().equals(other.refAmount, refAmount) &&
            const DeepCollectionEquality()
                .equals(other.gatewayMode, gatewayMode) &&
            const DeepCollectionEquality()
                .equals(other.paymentMode, paymentMode) &&
            const DeepCollectionEquality()
                .equals(other.applicationFlag, applicationFlag) &&
            const DeepCollectionEquality()
                .equals(other.prevCharge, prevCharge) &&
            const DeepCollectionEquality().equals(other.serCharge, serCharge) &&
            const DeepCollectionEquality().equals(other.agentMode, agentMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(refId),
      const DeepCollectionEquality().hash(reqId),
      const DeepCollectionEquality().hash(custId),
      const DeepCollectionEquality().hash(docId),
      const DeepCollectionEquality().hash(transactionAmount),
      const DeepCollectionEquality().hash(gatewayTransId),
      const DeepCollectionEquality().hash(confirmString),
      const DeepCollectionEquality().hash(errorString),
      const DeepCollectionEquality().hash(resString),
      const DeepCollectionEquality().hash(resTransId),
      const DeepCollectionEquality().hash(refAmount),
      const DeepCollectionEquality().hash(gatewayMode),
      const DeepCollectionEquality().hash(paymentMode),
      const DeepCollectionEquality().hash(applicationFlag),
      const DeepCollectionEquality().hash(prevCharge),
      const DeepCollectionEquality().hash(serCharge),
      const DeepCollectionEquality().hash(agentMode));

  @JsonKey(ignore: true)
  @override
  _$LogPaymentStatusCopyWith<_LogPaymentStatus> get copyWith =>
      __$LogPaymentStatusCopyWithImpl<_LogPaymentStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String amount,
            String orderName,
            String customerName,
            String phoneNumber,
            String email,
            String orderId)
        startPayment,
    required TResult Function(int amount, String generatedKey) generateOrderId,
    required TResult Function() generateOrdreKey,
    required TResult Function() paymentCancelled,
    required TResult Function() externalError,
    required TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)
        logPaymentDetails,
    required TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)
        logPaymentStatus,
  }) {
    return logPaymentStatus(
        refId,
        reqId,
        custId,
        docId,
        transactionAmount,
        gatewayTransId,
        confirmString,
        errorString,
        resString,
        resTransId,
        refAmount,
        gatewayMode,
        paymentMode,
        applicationFlag,
        prevCharge,
        serCharge,
        agentMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
  }) {
    return logPaymentStatus?.call(
        refId,
        reqId,
        custId,
        docId,
        transactionAmount,
        gatewayTransId,
        confirmString,
        errorString,
        resString,
        resTransId,
        refAmount,
        gatewayMode,
        paymentMode,
        applicationFlag,
        prevCharge,
        serCharge,
        agentMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String amount, String orderName, String customerName,
            String phoneNumber, String email, String orderId)?
        startPayment,
    TResult Function(int amount, String generatedKey)? generateOrderId,
    TResult Function()? generateOrdreKey,
    TResult Function()? paymentCancelled,
    TResult Function()? externalError,
    TResult Function(
            int firmId,
            int branchId,
            int moduleId,
            String refId,
            String reqId,
            String docId,
            String customerId,
            double transactioAmount,
            double refAmount,
            int gateWayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serviceCharge,
            int agentCode,
            String customerName)?
        logPaymentDetails,
    TResult Function(
            String refId,
            String reqId,
            String custId,
            String docId,
            double transactionAmount,
            String gatewayTransId,
            String confirmString,
            String errorString,
            String resString,
            String resTransId,
            double refAmount,
            int gatewayMode,
            int paymentMode,
            int applicationFlag,
            double prevCharge,
            double serCharge,
            int agentMode)?
        logPaymentStatus,
    required TResult orElse(),
  }) {
    if (logPaymentStatus != null) {
      return logPaymentStatus(
          refId,
          reqId,
          custId,
          docId,
          transactionAmount,
          gatewayTransId,
          confirmString,
          errorString,
          resString,
          resTransId,
          refAmount,
          gatewayMode,
          paymentMode,
          applicationFlag,
          prevCharge,
          serCharge,
          agentMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartPayment value) startPayment,
    required TResult Function(_GenerateOrderId value) generateOrderId,
    required TResult Function(_GenerateOrdreKey value) generateOrdreKey,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_ExternalError value) externalError,
    required TResult Function(_LogPaymentDetails value) logPaymentDetails,
    required TResult Function(_LogPaymentStatus value) logPaymentStatus,
  }) {
    return logPaymentStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
  }) {
    return logPaymentStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartPayment value)? startPayment,
    TResult Function(_GenerateOrderId value)? generateOrderId,
    TResult Function(_GenerateOrdreKey value)? generateOrdreKey,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_ExternalError value)? externalError,
    TResult Function(_LogPaymentDetails value)? logPaymentDetails,
    TResult Function(_LogPaymentStatus value)? logPaymentStatus,
    required TResult orElse(),
  }) {
    if (logPaymentStatus != null) {
      return logPaymentStatus(this);
    }
    return orElse();
  }
}

abstract class _LogPaymentStatus implements PaymentEvent {
  const factory _LogPaymentStatus(
      {required String refId,
      required String reqId,
      required String custId,
      required String docId,
      required double transactionAmount,
      required String gatewayTransId,
      required String confirmString,
      required String errorString,
      required String resString,
      required String resTransId,
      required double refAmount,
      required int gatewayMode,
      required int paymentMode,
      required int applicationFlag,
      required double prevCharge,
      required double serCharge,
      required int agentMode}) = _$_LogPaymentStatus;

  String get refId;
  String get reqId;
  String get custId;
  String get docId;
  double get transactionAmount;
  String get gatewayTransId;
  String get confirmString;
  String get errorString;
  String get resString;
  String get resTransId;
  double get refAmount;
  int get gatewayMode;
  int get paymentMode;
  int get applicationFlag;
  double get prevCharge;
  double get serCharge;
  int get agentMode;
  @JsonKey(ignore: true)
  _$LogPaymentStatusCopyWith<_LogPaymentStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

  _PaymentState call(
      {required String? generatedOrderKey,
      required bool? isLoading,
      OrderResponse? orderResponse,
      required Option<Either<PaymentFailure, OrderResponse>>
          generateOrderIdFailureORSuccessOption,
      required Option<Either<PaymentFailure, String>>
          startPaymentFailureOrSuccessOption,
      required Option<Either<PaymentFailure, String>>
          logPaymentDetailsFailureOrSuccess,
      required Option<Either<PaymentFailure, String>>
          logPaymentStatusFailureOrSuccess}) {
    return _PaymentState(
      generatedOrderKey: generatedOrderKey,
      isLoading: isLoading,
      orderResponse: orderResponse,
      generateOrderIdFailureORSuccessOption:
          generateOrderIdFailureORSuccessOption,
      startPaymentFailureOrSuccessOption: startPaymentFailureOrSuccessOption,
      logPaymentDetailsFailureOrSuccess: logPaymentDetailsFailureOrSuccess,
      logPaymentStatusFailureOrSuccess: logPaymentStatusFailureOrSuccess,
    );
  }
}

/// @nodoc
const $PaymentState = _$PaymentStateTearOff();

/// @nodoc
mixin _$PaymentState {
  String? get generatedOrderKey => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  OrderResponse? get orderResponse => throw _privateConstructorUsedError;
  Option<Either<PaymentFailure, OrderResponse>>
      get generateOrderIdFailureORSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<PaymentFailure, String>>
      get startPaymentFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  Option<Either<PaymentFailure, String>>
      get logPaymentDetailsFailureOrSuccess =>
          throw _privateConstructorUsedError;
  Option<Either<PaymentFailure, String>> get logPaymentStatusFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
  $Res call(
      {String? generatedOrderKey,
      bool? isLoading,
      OrderResponse? orderResponse,
      Option<Either<PaymentFailure, OrderResponse>>
          generateOrderIdFailureORSuccessOption,
      Option<Either<PaymentFailure, String>> startPaymentFailureOrSuccessOption,
      Option<Either<PaymentFailure, String>> logPaymentDetailsFailureOrSuccess,
      Option<Either<PaymentFailure, String>> logPaymentStatusFailureOrSuccess});

  $OrderResponseCopyWith<$Res>? get orderResponse;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;

  @override
  $Res call({
    Object? generatedOrderKey = freezed,
    Object? isLoading = freezed,
    Object? orderResponse = freezed,
    Object? generateOrderIdFailureORSuccessOption = freezed,
    Object? startPaymentFailureOrSuccessOption = freezed,
    Object? logPaymentDetailsFailureOrSuccess = freezed,
    Object? logPaymentStatusFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      generatedOrderKey: generatedOrderKey == freezed
          ? _value.generatedOrderKey
          : generatedOrderKey // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderResponse: orderResponse == freezed
          ? _value.orderResponse
          : orderResponse // ignore: cast_nullable_to_non_nullable
              as OrderResponse?,
      generateOrderIdFailureORSuccessOption:
          generateOrderIdFailureORSuccessOption == freezed
              ? _value.generateOrderIdFailureORSuccessOption
              : generateOrderIdFailureORSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<PaymentFailure, OrderResponse>>,
      startPaymentFailureOrSuccessOption: startPaymentFailureOrSuccessOption ==
              freezed
          ? _value.startPaymentFailureOrSuccessOption
          : startPaymentFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentFailure, String>>,
      logPaymentDetailsFailureOrSuccess: logPaymentDetailsFailureOrSuccess ==
              freezed
          ? _value.logPaymentDetailsFailureOrSuccess
          : logPaymentDetailsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentFailure, String>>,
      logPaymentStatusFailureOrSuccess: logPaymentStatusFailureOrSuccess ==
              freezed
          ? _value.logPaymentStatusFailureOrSuccess
          : logPaymentStatusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentFailure, String>>,
    ));
  }

  @override
  $OrderResponseCopyWith<$Res>? get orderResponse {
    if (_value.orderResponse == null) {
      return null;
    }

    return $OrderResponseCopyWith<$Res>(_value.orderResponse!, (value) {
      return _then(_value.copyWith(orderResponse: value));
    });
  }
}

/// @nodoc
abstract class _$PaymentStateCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$PaymentStateCopyWith(
          _PaymentState value, $Res Function(_PaymentState) then) =
      __$PaymentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? generatedOrderKey,
      bool? isLoading,
      OrderResponse? orderResponse,
      Option<Either<PaymentFailure, OrderResponse>>
          generateOrderIdFailureORSuccessOption,
      Option<Either<PaymentFailure, String>> startPaymentFailureOrSuccessOption,
      Option<Either<PaymentFailure, String>> logPaymentDetailsFailureOrSuccess,
      Option<Either<PaymentFailure, String>> logPaymentStatusFailureOrSuccess});

  @override
  $OrderResponseCopyWith<$Res>? get orderResponse;
}

/// @nodoc
class __$PaymentStateCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PaymentStateCopyWith<$Res> {
  __$PaymentStateCopyWithImpl(
      _PaymentState _value, $Res Function(_PaymentState) _then)
      : super(_value, (v) => _then(v as _PaymentState));

  @override
  _PaymentState get _value => super._value as _PaymentState;

  @override
  $Res call({
    Object? generatedOrderKey = freezed,
    Object? isLoading = freezed,
    Object? orderResponse = freezed,
    Object? generateOrderIdFailureORSuccessOption = freezed,
    Object? startPaymentFailureOrSuccessOption = freezed,
    Object? logPaymentDetailsFailureOrSuccess = freezed,
    Object? logPaymentStatusFailureOrSuccess = freezed,
  }) {
    return _then(_PaymentState(
      generatedOrderKey: generatedOrderKey == freezed
          ? _value.generatedOrderKey
          : generatedOrderKey // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderResponse: orderResponse == freezed
          ? _value.orderResponse
          : orderResponse // ignore: cast_nullable_to_non_nullable
              as OrderResponse?,
      generateOrderIdFailureORSuccessOption:
          generateOrderIdFailureORSuccessOption == freezed
              ? _value.generateOrderIdFailureORSuccessOption
              : generateOrderIdFailureORSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<PaymentFailure, OrderResponse>>,
      startPaymentFailureOrSuccessOption: startPaymentFailureOrSuccessOption ==
              freezed
          ? _value.startPaymentFailureOrSuccessOption
          : startPaymentFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentFailure, String>>,
      logPaymentDetailsFailureOrSuccess: logPaymentDetailsFailureOrSuccess ==
              freezed
          ? _value.logPaymentDetailsFailureOrSuccess
          : logPaymentDetailsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentFailure, String>>,
      logPaymentStatusFailureOrSuccess: logPaymentStatusFailureOrSuccess ==
              freezed
          ? _value.logPaymentStatusFailureOrSuccess
          : logPaymentStatusFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<PaymentFailure, String>>,
    ));
  }
}

/// @nodoc

class _$_PaymentState implements _PaymentState {
  const _$_PaymentState(
      {required this.generatedOrderKey,
      required this.isLoading,
      this.orderResponse,
      required this.generateOrderIdFailureORSuccessOption,
      required this.startPaymentFailureOrSuccessOption,
      required this.logPaymentDetailsFailureOrSuccess,
      required this.logPaymentStatusFailureOrSuccess});

  @override
  final String? generatedOrderKey;
  @override
  final bool? isLoading;
  @override
  final OrderResponse? orderResponse;
  @override
  final Option<Either<PaymentFailure, OrderResponse>>
      generateOrderIdFailureORSuccessOption;
  @override
  final Option<Either<PaymentFailure, String>>
      startPaymentFailureOrSuccessOption;
  @override
  final Option<Either<PaymentFailure, String>>
      logPaymentDetailsFailureOrSuccess;
  @override
  final Option<Either<PaymentFailure, String>> logPaymentStatusFailureOrSuccess;

  @override
  String toString() {
    return 'PaymentState(generatedOrderKey: $generatedOrderKey, isLoading: $isLoading, orderResponse: $orderResponse, generateOrderIdFailureORSuccessOption: $generateOrderIdFailureORSuccessOption, startPaymentFailureOrSuccessOption: $startPaymentFailureOrSuccessOption, logPaymentDetailsFailureOrSuccess: $logPaymentDetailsFailureOrSuccess, logPaymentStatusFailureOrSuccess: $logPaymentStatusFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentState &&
            const DeepCollectionEquality()
                .equals(other.generatedOrderKey, generatedOrderKey) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.orderResponse, orderResponse) &&
            const DeepCollectionEquality().equals(
                other.generateOrderIdFailureORSuccessOption,
                generateOrderIdFailureORSuccessOption) &&
            const DeepCollectionEquality().equals(
                other.startPaymentFailureOrSuccessOption,
                startPaymentFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(
                other.logPaymentDetailsFailureOrSuccess,
                logPaymentDetailsFailureOrSuccess) &&
            const DeepCollectionEquality().equals(
                other.logPaymentStatusFailureOrSuccess,
                logPaymentStatusFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(generatedOrderKey),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(orderResponse),
      const DeepCollectionEquality()
          .hash(generateOrderIdFailureORSuccessOption),
      const DeepCollectionEquality().hash(startPaymentFailureOrSuccessOption),
      const DeepCollectionEquality().hash(logPaymentDetailsFailureOrSuccess),
      const DeepCollectionEquality().hash(logPaymentStatusFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$PaymentStateCopyWith<_PaymentState> get copyWith =>
      __$PaymentStateCopyWithImpl<_PaymentState>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {required String? generatedOrderKey,
      required bool? isLoading,
      OrderResponse? orderResponse,
      required Option<Either<PaymentFailure, OrderResponse>>
          generateOrderIdFailureORSuccessOption,
      required Option<Either<PaymentFailure, String>>
          startPaymentFailureOrSuccessOption,
      required Option<Either<PaymentFailure, String>>
          logPaymentDetailsFailureOrSuccess,
      required Option<Either<PaymentFailure, String>>
          logPaymentStatusFailureOrSuccess}) = _$_PaymentState;

  @override
  String? get generatedOrderKey;
  @override
  bool? get isLoading;
  @override
  OrderResponse? get orderResponse;
  @override
  Option<Either<PaymentFailure, OrderResponse>>
      get generateOrderIdFailureORSuccessOption;
  @override
  Option<Either<PaymentFailure, String>> get startPaymentFailureOrSuccessOption;
  @override
  Option<Either<PaymentFailure, String>> get logPaymentDetailsFailureOrSuccess;
  @override
  Option<Either<PaymentFailure, String>> get logPaymentStatusFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$PaymentStateCopyWith<_PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
