
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Api/Repo/Currency/CurrencyRepo.dart';
import '../../Model/TCurrency.dart';

class ListController extends  FullLifeCycleController with FullLifeCycleMixin {
  List<TCurrency> listCurrencies = [];
  
  ScrollController scrollController = ScrollController();
  bool isLoadingRequest = false;

  var url = "https://newline.dev/currency/api/v1/currencies/list";

  var page_number = 1;

  /// Callin Api and getting data From server
  getCurrencies() async {

    ///Method 1
    // TBaseResponse tBaseResponse = TBaseResponse.fromJson(response.data);
    // print(tBaseResponse);
    // listCurrencies = tBaseResponse.currencies;

    ///Method 2

    isLoadingRequest = true;
    update();
    Map<String, dynamic> map = {
      'i_page_count': 20,
      'i_page_number': page_number
    };
    listCurrencies = await CurrencyRepo.instance.getCurrencyRequest(map: map);
    isLoadingRequest = false;

    update();
  }


  @override
  void onInit() {
    getCurrencies();
    addLoadMoreTrigger();
    super.onInit();
  }

  addLoadMoreTrigger()  {
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.position.pixels) {
        loadMore();
      }
    });
  }


  onRefresh(){
    listCurrencies.clear();
    page_number=1 ;
    stopLoadMore =false;
    getCurrencies();


  }


  bool stopLoadMore =false;

  void loadMore() async {
    if(stopLoadMore) return;


    List<TCurrency> loadMoreList=[];
    page_number += 1;
    // isLoadingRequest = true;
    // update();

    Map<String, dynamic> map = {
      'i_page_count': 20,
      'i_page_number': page_number
    };
    loadMoreList = await CurrencyRepo.instance.getCurrencyRequest(map: map);

    if(loadMoreList.isEmpty)stopLoadMore =true;


    listCurrencies.addAll(loadMoreList);
    // isLoadingRequest = false;

    update();

  }

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }


}
