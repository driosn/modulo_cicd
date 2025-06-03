import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dynamic_icon_plus/flutter_dynamic_icon_plus.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/whitelabel/data/datasources/whitelabel_local_datasource.dart';
import 'package:resident_app/features/whitelabel/data/datasources/whitelabel_remote_datasource.dart';
import 'package:resident_app/features/whitelabel/data/models/whitelabel_model.dart';
import 'package:resident_app/features/whitelabel/domain/entities/whitelabel.dart';
import 'package:resident_app/features/whitelabel/domain/repositories/whitelabel_repository.dart';

class WhitelabelRepositoryImpl implements WhitelabelRepository {
  const WhitelabelRepositoryImpl({
    required WhitelabelRemoteDataSource whitelabelRemoteDataSource,
    required WhitelabelLocalDataSource whitelabelLocalDataSource,
  })  : _whitelabelRemoteDataSource = whitelabelRemoteDataSource,
        _whitelabelLocalDataSource = whitelabelLocalDataSource;

  final WhitelabelRemoteDataSource _whitelabelRemoteDataSource;
  final WhitelabelLocalDataSource _whitelabelLocalDataSource;

  @override
  Future<Either<MAError, Whitelabel>> get({
    int? corePropertyId,
    int? coreCompanyId,
  }) async {
    try {
      ///
      /// Get From Remote
      ///
      Future<Either<MAError, Whitelabel>> getFromRemote(
        int corePropertyId,
        int coreCompanyId,
      ) async {
        final remoteWhiteLabelNotFoundError = MAError.internalServerError(
          message: 'Remote whitelabel settings not found',
        );

        try {
          Whitelabel? whiteLabelResult = await _whitelabelRemoteDataSource.getByCorePropertyId(corePropertyId);
          whiteLabelResult ??= await _whitelabelRemoteDataSource.getByCoreCompanyId(coreCompanyId);
          return whiteLabelResult == null ? Left(remoteWhiteLabelNotFoundError) : Right(whiteLabelResult);
        } catch (e) {
          return Left(remoteWhiteLabelNotFoundError);
        }
      }

      ///
      ///
      ///

      ///
      /// Get From Local
      ///
      Future<Either<MAError, Whitelabel>> getFromLocal() async {
        final localWhiteLabelNotFoundError = MAError.localStorageError(message: 'Local whitelabel settings not found');

        try {
          Whitelabel? whiteLabelResult = await _whitelabelLocalDataSource.getWhiteLabelSettings();
          return whiteLabelResult == null ? Left(localWhiteLabelNotFoundError) : Right(whiteLabelResult);
        } catch (e) {
          return Left(localWhiteLabelNotFoundError);
        }
      }

      ///
      ///
      ///
      final shouldGetFromRemote = corePropertyId != null && coreCompanyId != null;

      if (shouldGetFromRemote) {
        return await getFromRemote(
          corePropertyId,
          coreCompanyId,
        );
      }

      return await getFromLocal();
    } catch (e) {
      return Left(
        MAError.unexpected(message: "Unexpected exception"),
      );
    }
  }

  @override
  Future<void> set(Whitelabel whitelabelSettings) async {
    if (whitelabelSettings is WhitelabelModel) {
      ///
      /// Set whitelabel in Storage
      ///
      await _whitelabelLocalDataSource
          .setWhiteLabelSettings(whitelabelSettings);

      ///
      /// Set whitelabel app icon iOS
      ///
      if (Platform.isIOS) {
        try {
          // Check if the device supports alternate icons
          if (await FlutterDynamicIconPlus.supportsAlternateIcons) {
            String? appIconName =
                await FlutterDynamicIconPlus.alternateIconName;
            if (appIconName != whitelabelSettings.appIcon) {
              await FlutterDynamicIconPlus.setAlternateIconName(
                iconName: "${whitelabelSettings.appIcon}_alternate",
                isSilent: true,
              );
            }
          }
        } on PlatformException catch (_) {
          print('Failed to change app icon');
        }
      }
    }
  }

  @override
  Future<void> reset() async {
    ///
    /// Reset whitelabel in Storage
    ///
    await _whitelabelLocalDataSource.resetWhiteLabel();

    ///
    /// Reset app icon iOS
    ///
    if (Platform.isIOS) {
      try {
        // Check if the device supports alternate icons
        if (await FlutterDynamicIconPlus.supportsAlternateIcons) {
          String? appIconName = await FlutterDynamicIconPlus.alternateIconName;
          if (appIconName != null) {
            await FlutterDynamicIconPlus.setAlternateIconName(
              iconName: null,
              isSilent: true,
            );
          }
        }
      } on PlatformException catch (_) {
        print('Failed to change app icon');
      }
    }
  }

  @override
  Future<Either<MAError, Whitelabel>> setup({
    int? corePropertyId,
    int? coreCompanyId,
  }) async {
    final result = await get(
      coreCompanyId: coreCompanyId,
      corePropertyId: corePropertyId,
    );

    final foldedResult = result.fold((l) => l, (r) => r);

    if (result.isRight()) {
      await set(foldedResult as Whitelabel);
    } else {
      await reset();
    }

    return result;
  }
}
