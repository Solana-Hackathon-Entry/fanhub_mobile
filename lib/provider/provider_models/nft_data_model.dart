import 'package:flutter/cupertino.dart';
import 'package:nft_marketplace/provider/api_provider/nft_api.dart';
import 'package:nft_marketplace/provider/models/nft_model.dart';

import '../models/nft_meta_data_model.dart';

class NFTDataModel  extends ChangeNotifier {
 final NFTApi _nftApi = NFTApi();
 List<NFTMetaDataModel> _listNFT = <NFTMetaDataModel>[];


 List<NFTMetaDataModel> get listNFT => _listNFT;

  set listNFT(List<NFTMetaDataModel> value) {
    _listNFT = value;
    notifyListeners();
  }

  List<NftModel> _listNftModel = <NftModel>[];

 List<NftModel> get listNftModel => _listNftModel;

  set listNftModel(List<NftModel> value) {
    _listNftModel = value;
    notifyListeners();
  }

  Future<void> getListOfNFT() async {
   try {
     listNFT = await _nftApi.getListOfNFT();
     for(var metaData in listNFT) {
       if (metaData.uri!.isNotEmpty){
         listNftModel.add((await _nftApi.getNFTData(metaData.uri!)));

       }
     }

   } catch (ex) {
     rethrow;
   }
 }
}