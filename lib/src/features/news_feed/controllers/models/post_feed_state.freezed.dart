// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_feed_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostFeedState _$PostFeedStateFromJson(Map<String, dynamic> json) {
  return _PostFeedState.fromJson(json);
}

/// @nodoc
mixin _$PostFeedState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<int> get fetchedIdList => throw _privateConstructorUsedError;
  List<PostData> get dataList => throw _privateConstructorUsedError;

  /// Serializes this PostFeedState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostFeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostFeedStateCopyWith<PostFeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFeedStateCopyWith<$Res> {
  factory $PostFeedStateCopyWith(
          PostFeedState value, $Res Function(PostFeedState) then) =
      _$PostFeedStateCopyWithImpl<$Res, PostFeedState>;
  @useResult
  $Res call({bool isLoading, List<int> fetchedIdList, List<PostData> dataList});
}

/// @nodoc
class _$PostFeedStateCopyWithImpl<$Res, $Val extends PostFeedState>
    implements $PostFeedStateCopyWith<$Res> {
  _$PostFeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostFeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? fetchedIdList = null,
    Object? dataList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchedIdList: null == fetchedIdList
          ? _value.fetchedIdList
          : fetchedIdList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      dataList: null == dataList
          ? _value.dataList
          : dataList // ignore: cast_nullable_to_non_nullable
              as List<PostData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostFeedStateImplCopyWith<$Res>
    implements $PostFeedStateCopyWith<$Res> {
  factory _$$PostFeedStateImplCopyWith(
          _$PostFeedStateImpl value, $Res Function(_$PostFeedStateImpl) then) =
      __$$PostFeedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<int> fetchedIdList, List<PostData> dataList});
}

/// @nodoc
class __$$PostFeedStateImplCopyWithImpl<$Res>
    extends _$PostFeedStateCopyWithImpl<$Res, _$PostFeedStateImpl>
    implements _$$PostFeedStateImplCopyWith<$Res> {
  __$$PostFeedStateImplCopyWithImpl(
      _$PostFeedStateImpl _value, $Res Function(_$PostFeedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostFeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? fetchedIdList = null,
    Object? dataList = null,
  }) {
    return _then(_$PostFeedStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchedIdList: null == fetchedIdList
          ? _value._fetchedIdList
          : fetchedIdList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      dataList: null == dataList
          ? _value._dataList
          : dataList // ignore: cast_nullable_to_non_nullable
              as List<PostData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostFeedStateImpl
    with DiagnosticableTreeMixin
    implements _PostFeedState {
  const _$PostFeedStateImpl(
      {required this.isLoading,
      required final List<int> fetchedIdList,
      required final List<PostData> dataList})
      : _fetchedIdList = fetchedIdList,
        _dataList = dataList;

  factory _$PostFeedStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostFeedStateImplFromJson(json);

  @override
  final bool isLoading;
  final List<int> _fetchedIdList;
  @override
  List<int> get fetchedIdList {
    if (_fetchedIdList is EqualUnmodifiableListView) return _fetchedIdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchedIdList);
  }

  final List<PostData> _dataList;
  @override
  List<PostData> get dataList {
    if (_dataList is EqualUnmodifiableListView) return _dataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostFeedState(isLoading: $isLoading, fetchedIdList: $fetchedIdList, dataList: $dataList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostFeedState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('fetchedIdList', fetchedIdList))
      ..add(DiagnosticsProperty('dataList', dataList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFeedStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._fetchedIdList, _fetchedIdList) &&
            const DeepCollectionEquality().equals(other._dataList, _dataList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_fetchedIdList),
      const DeepCollectionEquality().hash(_dataList));

  /// Create a copy of PostFeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostFeedStateImplCopyWith<_$PostFeedStateImpl> get copyWith =>
      __$$PostFeedStateImplCopyWithImpl<_$PostFeedStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostFeedStateImplToJson(
      this,
    );
  }
}

abstract class _PostFeedState implements PostFeedState {
  const factory _PostFeedState(
      {required final bool isLoading,
      required final List<int> fetchedIdList,
      required final List<PostData> dataList}) = _$PostFeedStateImpl;

  factory _PostFeedState.fromJson(Map<String, dynamic> json) =
      _$PostFeedStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<int> get fetchedIdList;
  @override
  List<PostData> get dataList;

  /// Create a copy of PostFeedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostFeedStateImplCopyWith<_$PostFeedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
