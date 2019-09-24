import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import './base.dart';
import 'dart:async';
import 'dart:io';

Future request(url,{formData})async{
  try{
    print("start123.........."+servicePath[url]);
    Response response;
    Dio dio=new Dio();
    dio.options.contentType=ContentType.parse("application/x-www-form-urlencoded");
    if(formData==null){
      response = await dio.get(servicePath[url]);
    }else{
      response = await dio.get(servicePath[url],queryParameters:formData);
    }
    if(response.statusCode == 200){
      return response.data;
    }else{
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  }catch(e){
    return print('ERROR:======> ${e}');
  }
}

Future post(url,{formData})async{
  try{
    print("start123..........");
    Response response;
    Dio dio=new Dio();
    dio.options.contentType=ContentType.parse("application/x-www-form-urlencoded");
    if(formData==null){
      response = await dio.post(servicePath[url]);
    }else{
      response = await dio.post(servicePath[url],data:formData);
    }
    if(response.statusCode == 200){
      return response.data;
    }else{
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  }catch(e){
    return print('ERROR:======> ${e}');
  }
}
