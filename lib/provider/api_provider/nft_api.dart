import 'package:nft_marketplace/provider/models/nft_meta_data_model.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:nft_marketplace/provider/models/nft_model.dart';

import '../../utils/common.dart';

class NFTApi {
  /// get list of nft
  Future<List<NFTMetaDataModel>> getListOfNFT() async {
    List<NFTMetaDataModel> listResult = <NFTMetaDataModel>[];
    try {
      HttpOverrides.global = MyHttpOverrides();
      var url = Uri.parse('https://fan-hub-api.onrender.com/api/v1/nfts');
      final http.Response response = await http
          .get(url,
              headers: <String, String>{
                'Content-Type': 'application/json; charset=UTF-8',
              })
          .timeout(const Duration(seconds: APICommon.timeOutPeriod));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        var list = data['data'] as List;
        listResult =
            list.map<NFTMetaDataModel>((json) => NFTMetaDataModel.fromJson(json)).toList();

        return listResult;
      } else {
        throw CommonAPIError.handleError(response);
      }
    } on TimeoutException catch (_) {
      throw ApiMessage.timeOut;
    } on SocketException catch (ex) {
      print(ex.toString());
      rethrow;
    } catch (e) {
      throw e.toString();
    }
  }

  Future<NftModel> getNFTData(String link) async {
    NftModel result = NftModel();
    try {
      HttpOverrides.global = MyHttpOverrides();
      var url = Uri.parse(link);
      final http.Response response = await http
          .get(url,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          })
          .timeout(const Duration(seconds: APICommon.timeOutPeriod));

      if (response.statusCode == 200) {
         result = NftModel.fromJson(jsonDecode(response.body));
        return result;
      } else {
        throw CommonAPIError.handleError(response);
      }
    } on TimeoutException catch (_) {
      throw ApiMessage.timeOut;
    } on SocketException catch (ex) {
      print(ex.toString());
      rethrow;
    } catch (e) {
      throw e.toString();
    }
  }
}
