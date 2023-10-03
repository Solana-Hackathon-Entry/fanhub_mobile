import 'package:flutter/material.dart';
import 'package:nft_marketplace/provider/models/nft_meta_data_model.dart';
import 'package:nft_marketplace/provider/models/nft_model.dart';
import 'package:nft_marketplace/provider/provider_models/nft_data_model.dart';

import '../../../config/themes.dart';
import 'package:provider/provider.dart';

class NFTListScreen extends StatefulWidget {
  const NFTListScreen({super.key});

  @override
  State<NFTListScreen> createState() => _NFTListScreenState();
}

class _NFTListScreenState extends State<NFTListScreen> {
  NFTDataModel _dataModel = NFTDataModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _dataModel = Provider.of<NFTDataModel>(context, listen: false);
      _dataModel.getListOfNFT();
    });
  }

  @override
  Widget build(BuildContext context) {
    _dataModel = Provider.of<NFTDataModel>(context);
    return Scaffold(
      backgroundColor: ColorConstant.backGroundColor1,
      appBar: AppBar(
        backgroundColor: ColorConstant.color3,
        title: const Text("NFT"),
      ),
      body: _NFTCard(

      ),

      /*ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: _dataModel.listNftModel.length,
        itemBuilder: (context, index) {
          NftModel model = _dataModel.listNftModel[index];
          return _NFTCard(
            name: model.name!,
            imageUrl: model.image!,
          );
        },
      ),*/
    );
  }
}

class _NFTCard extends StatelessWidget {
  final String? name;
  final String? imageUrl;

  const _NFTCard({
    this.name = 'name',
    this.imageUrl =
        'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              name!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Image.network(imageUrl!),
        ],
      ),
    );
  }
}
