// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctors_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DoctorsListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DoctorsListEvent()';
}


}

/// @nodoc
class $DoctorsListEventCopyWith<$Res>  {
$DoctorsListEventCopyWith(DoctorsListEvent _, $Res Function(DoctorsListEvent) __);
}


/// @nodoc


class Fetched implements DoctorsListEvent {
  const Fetched({required final  List<DoctorModel> doctorsList}): _doctorsList = doctorsList;
  

 final  List<DoctorModel> _doctorsList;
 List<DoctorModel> get doctorsList {
  if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_doctorsList);
}


/// Create a copy of DoctorsListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchedCopyWith<Fetched> get copyWith => _$FetchedCopyWithImpl<Fetched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Fetched&&const DeepCollectionEquality().equals(other._doctorsList, _doctorsList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctorsList));

@override
String toString() {
  return 'DoctorsListEvent.fetched(doctorsList: $doctorsList)';
}


}

/// @nodoc
abstract mixin class $FetchedCopyWith<$Res> implements $DoctorsListEventCopyWith<$Res> {
  factory $FetchedCopyWith(Fetched value, $Res Function(Fetched) _then) = _$FetchedCopyWithImpl;
@useResult
$Res call({
 List<DoctorModel> doctorsList
});




}
/// @nodoc
class _$FetchedCopyWithImpl<$Res>
    implements $FetchedCopyWith<$Res> {
  _$FetchedCopyWithImpl(this._self, this._then);

  final Fetched _self;
  final $Res Function(Fetched) _then;

/// Create a copy of DoctorsListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? doctorsList = null,}) {
  return _then(Fetched(
doctorsList: null == doctorsList ? _self._doctorsList : doctorsList // ignore: cast_nullable_to_non_nullable
as List<DoctorModel>,
  ));
}


}

/// @nodoc


class Searched implements DoctorsListEvent {
  const Searched({required this.query});
  

 final  String query;

/// Create a copy of DoctorsListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchedCopyWith<Searched> get copyWith => _$SearchedCopyWithImpl<Searched>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Searched&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'DoctorsListEvent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchedCopyWith<$Res> implements $DoctorsListEventCopyWith<$Res> {
  factory $SearchedCopyWith(Searched value, $Res Function(Searched) _then) = _$SearchedCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchedCopyWithImpl<$Res>
    implements $SearchedCopyWith<$Res> {
  _$SearchedCopyWithImpl(this._self, this._then);

  final Searched _self;
  final $Res Function(Searched) _then;

/// Create a copy of DoctorsListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(Searched(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchedWithFilter implements DoctorsListEvent {
  const SearchedWithFilter({required this.query, required this.filter});
  

 final  String query;
 final  String filter;

/// Create a copy of DoctorsListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchedWithFilterCopyWith<SearchedWithFilter> get copyWith => _$SearchedWithFilterCopyWithImpl<SearchedWithFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchedWithFilter&&(identical(other.query, query) || other.query == query)&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,query,filter);

@override
String toString() {
  return 'DoctorsListEvent.searchedWithFilter(query: $query, filter: $filter)';
}


}

/// @nodoc
abstract mixin class $SearchedWithFilterCopyWith<$Res> implements $DoctorsListEventCopyWith<$Res> {
  factory $SearchedWithFilterCopyWith(SearchedWithFilter value, $Res Function(SearchedWithFilter) _then) = _$SearchedWithFilterCopyWithImpl;
@useResult
$Res call({
 String query, String filter
});




}
/// @nodoc
class _$SearchedWithFilterCopyWithImpl<$Res>
    implements $SearchedWithFilterCopyWith<$Res> {
  _$SearchedWithFilterCopyWithImpl(this._self, this._then);

  final SearchedWithFilter _self;
  final $Res Function(SearchedWithFilter) _then;

/// Create a copy of DoctorsListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,Object? filter = null,}) {
  return _then(SearchedWithFilter(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DoctorsListState {

 List<DoctorModel> get doctorsList;
/// Create a copy of DoctorsListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsListStateCopyWith<DoctorsListState> get copyWith => _$DoctorsListStateCopyWithImpl<DoctorsListState>(this as DoctorsListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsListState&&const DeepCollectionEquality().equals(other.doctorsList, doctorsList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(doctorsList));

@override
String toString() {
  return 'DoctorsListState(doctorsList: $doctorsList)';
}


}

/// @nodoc
abstract mixin class $DoctorsListStateCopyWith<$Res>  {
  factory $DoctorsListStateCopyWith(DoctorsListState value, $Res Function(DoctorsListState) _then) = _$DoctorsListStateCopyWithImpl;
@useResult
$Res call({
 List<DoctorModel> doctorsList
});




}
/// @nodoc
class _$DoctorsListStateCopyWithImpl<$Res>
    implements $DoctorsListStateCopyWith<$Res> {
  _$DoctorsListStateCopyWithImpl(this._self, this._then);

  final DoctorsListState _self;
  final $Res Function(DoctorsListState) _then;

/// Create a copy of DoctorsListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? doctorsList = null,}) {
  return _then(_self.copyWith(
doctorsList: null == doctorsList ? _self.doctorsList : doctorsList // ignore: cast_nullable_to_non_nullable
as List<DoctorModel>,
  ));
}

}


/// @nodoc


class _Initial implements DoctorsListState {
  const _Initial({required final  List<DoctorModel> doctorsList, this.department}): _doctorsList = doctorsList;
  

 final  List<DoctorModel> _doctorsList;
@override List<DoctorModel> get doctorsList {
  if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_doctorsList);
}

 final  String? department;

/// Create a copy of DoctorsListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._doctorsList, _doctorsList)&&(identical(other.department, department) || other.department == department));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctorsList),department);

@override
String toString() {
  return 'DoctorsListState.initial(doctorsList: $doctorsList, department: $department)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $DoctorsListStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<DoctorModel> doctorsList, String? department
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of DoctorsListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? doctorsList = null,Object? department = freezed,}) {
  return _then(_Initial(
doctorsList: null == doctorsList ? _self._doctorsList : doctorsList // ignore: cast_nullable_to_non_nullable
as List<DoctorModel>,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _Modified implements DoctorsListState {
  const _Modified({required final  List<DoctorModel> doctorsList}): _doctorsList = doctorsList;
  

 final  List<DoctorModel> _doctorsList;
@override List<DoctorModel> get doctorsList {
  if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_doctorsList);
}


/// Create a copy of DoctorsListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModifiedCopyWith<_Modified> get copyWith => __$ModifiedCopyWithImpl<_Modified>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Modified&&const DeepCollectionEquality().equals(other._doctorsList, _doctorsList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctorsList));

@override
String toString() {
  return 'DoctorsListState.modified(doctorsList: $doctorsList)';
}


}

/// @nodoc
abstract mixin class _$ModifiedCopyWith<$Res> implements $DoctorsListStateCopyWith<$Res> {
  factory _$ModifiedCopyWith(_Modified value, $Res Function(_Modified) _then) = __$ModifiedCopyWithImpl;
@override @useResult
$Res call({
 List<DoctorModel> doctorsList
});




}
/// @nodoc
class __$ModifiedCopyWithImpl<$Res>
    implements _$ModifiedCopyWith<$Res> {
  __$ModifiedCopyWithImpl(this._self, this._then);

  final _Modified _self;
  final $Res Function(_Modified) _then;

/// Create a copy of DoctorsListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? doctorsList = null,}) {
  return _then(_Modified(
doctorsList: null == doctorsList ? _self._doctorsList : doctorsList // ignore: cast_nullable_to_non_nullable
as List<DoctorModel>,
  ));
}


}

// dart format on
