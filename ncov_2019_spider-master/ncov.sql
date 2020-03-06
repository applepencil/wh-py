/*
 Navicat Premium Data Transfer

 Source Server         : mongodb
 Source Server Type    : MongoDB
 Source Server Version : 30006
 Source Host           : 1.1.1.7:27017
 Source Schema         : ncov

 Target Server Type    : MongoDB
 Target Server Version : 30006
 File Encoding         : 65001

 Date: 08/02/2020 20:43:29
*/


// ----------------------------
// Collection structure for DXYArea
// ----------------------------
db.getCollection("DXYArea").drop();
db.createCollection("DXYArea");

// ----------------------------
// Collection structure for DXYNews
// ----------------------------
db.getCollection("DXYNews").drop();
db.createCollection("DXYNews");

// ----------------------------
// Collection structure for DXYOverall
// ----------------------------
db.getCollection("DXYOverall").drop();
db.createCollection("DXYOverall");

// ----------------------------
// Collection structure for DXYProvince
// ----------------------------
db.getCollection("DXYProvince").drop();
db.createCollection("DXYProvince");

// ----------------------------
// Collection structure for DXYRumors
// ----------------------------
db.getCollection("DXYRumors").drop();
db.createCollection("DXYRumors");

// ----------------------------
// Collection structure for system.indexes
// ----------------------------
db.getCollection("system.indexes").drop();
db.createCollection("system.indexes");
