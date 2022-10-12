import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class UserSecureStorage{
static final _storage = FlutterSecureStorage();

static const _keyUsername = 'username';
static const _keyPass = 'password';

static Future setUsername(String username) async =>
    await _storage.write(key: _keyUsername, value: username);

static Future<String?> getUsername() async =>
    await _storage.read(key: _keyUsername);


static Future setPass(String pass) async =>
    await _storage.write(key: _keyPass, value: pass);

static Future<String?> getPass() async =>
    await _storage.read(key: _keyPass);

}


