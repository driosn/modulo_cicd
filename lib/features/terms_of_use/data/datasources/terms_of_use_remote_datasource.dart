import 'package:resident_app/core/data/models/document_model.dart';

abstract class TermsOfUseRemoteDataSource {
  Future<DocumentModel> getDocument();
}
