//タブ数：18個　総行数：1933行

import processing.serial.*;
import de.looksgood.ani.*;
import ddf.minim.*;

//描画される円に関する変数
boolean boxVisible1 = true;
boolean boxVisible2;
boolean boxVisible3;
boolean boxVisible4;
boolean boxVisible5 = false;
boolean trackVisible2;
boolean trackVisible3;
boolean trackVisible4 = false;
boolean orangeVisible1;
boolean orangeVisible2;

//みかんの設定
float orangeSize;
float orange_x, orange_y;


//横置き段ボールの座標
float bf_lux, bf_luy, bf_ldx, bf_ldy; //frontboxの左側の点の座標
float bf_rux, bf_ruy, bf_rdx, bf_rdy; //frontboxの右
float bf_lengthx, bf_lengthy; //frontboxの長さ

float bub_lux, bub_luy, bub_ldx, bub_ldy; //upbackboxの左
float bub_rux, bub_ruy, bub_rdx, bub_rdy; //upbackboxの右

float buf_lux, buf_luy, buf_ldx, buf_ldy; //upfrontboxの左
float buf_rux, buf_ruy, buf_rdx, buf_rdy; //upfrontboxの右

float brs_lux, brs_luy, brs_ldx, brs_ldy; //rightsideboxの左
float brs_rux, brs_ruy, brs_rdx, brs_rdy; //rightsideboxの右

float bif_lux, bif_luy, bif_ldx, bif_ldy; //infrontの右
float bif_rux, bif_ruy, bif_rdx, bif_rdy; //infrontの右

float bib_lux, bib_luy, bib_ldx, bib_ldy; //inbackの右
float bib_rux, bib_ruy, bib_rdx, bib_rdy; //inbackの右

float m_x, m_y; //みかんの文字の座標
float mikanSize; //大きさ
float c_x, c_y; //へた
float c_lex, c_ley;


//横置き段ボールの座標
float bf2_lux, bf2_luy, bf2_ldx, bf2_ldy; //frontboxの左側の点の座標
float bf2_rux, bf2_ruy, bf2_rdx, bf2_rdy; //frontboxの右
float bf2_lengthx, bf2_lengthy; //frontboxの長さ

float bu2_lux, bu2_luy, bu2_ldx, bu2_ldy; //upbackboxの左
float bu2_rux, bu2_ruy, bu2_rdx, bu2_rdy; //upbackboxの右

float brf2_lux, brf2_luy, brf2_ldx, brf2_ldy; //rightfronttrackの左
float brf2_rux, brf2_ruy, brf2_rdx, brf2_rdy; //rightfronttrackの右

float brb2_x1, brb2_y1, brb2_x2, brb2_y2, brb2_x3, brb2_y3; //rightbacktrack

float bi2_lux, bi2_luy, bi2_ldx, bi2_ldy; //infrontの左
float bi2_rux, bi2_ruy, bi2_rdx, bi2_rdy; //infrontの右

float m2_x, m2_y; //みかんの文字の座標
float mikanSize2; //大きさ
float c2_x, c2_y; //へた
float c2_lex, c2_ley;


//トラックの座標
//荷台の座標 track
float tf_lux, tf_luy, tf_ldx, tf_ldy; //fronttrackの左側の点の座標
float tf_rux, tf_ruy, tf_rdx, tf_rdy; //fronttrackの右
float tf_lengthx, tf_lengthy; //fronttrackの長さ

float tu_lux, tu_luy, tu_ldx, tu_ldy; //uptrackの左
float tu_rux, tu_ruy, tu_rdx, tu_rdy; //uptrackの右

float trf_lux, trf_luy, trf_ldx, trf_ldy; //rightfronttrackの左
float trf_rux, trf_ruy, trf_rdx, trf_rdy; //rightfronttrackの右

float trb_lux, trb_luy, trb_ldx, trb_ldy; //rightbacktrackの左
float trb_rux, trb_ruy, trb_rdx, trb_rdy; //rightbacktrackの右

float tib_lux, tib_luy, tib_ldx, tib_ldy; //inbackの左
float tib_rux, tib_ruy, tib_rdx, tib_rdy; //inbackの右

//キャビンの座標 cabin
float cf_lux, cf_luy, cf_lmx, cf_lmy, cf_ldx, cf_ldy; //frontcabinの左
float cf_rux, cf_ruy, cf_rdx, cf_rdy; //frontcabinの右

float cu_lux, cu_luy, cu_ldx, cu_ldy; //upcabinの左
float cu_rux, cu_ruy, cu_rdx, cu_rdy; //upcabinの右

float cw_lux, cw_luy, cw_ldx, cw_ldy; //upwindowの左
float cw_rux, cw_ruy, cw_rdx, cw_rdy; //upwindowの右

//タイヤの設定 wheel
float w1_x, w1_y, w1_xlength, w1_ylength; //leftfront
float w2_x, w2_y, w2_xlength, w2_ylength; //rightfront
float w3_x, w3_y, w3_xlength, w3_ylength; //leftback
float w4_x, w4_y, w4_xlength, w4_ylength; //rightback


//booleanの代わり
int boxopen1 = 0;
int boxopen2 = 0;
int boxclose1 = 0;
int boxclose2 = 0;
int boxmove1 = 0;
int boxmove2 = 0;
int boxmove3 = 0;
int sky = 0;
int ground = 0;
int trackopen1 = 0;
int trackopen2 = 0;
int trackclose1 = 0;
int trackclose2 = 0;
int sound = 0;

int y;
int x = 0;
int h = -100;

int leave;
int timer;
float orangesemi;

color track = #e0e0e0;
color cabin = #ffb6c1;
color window = #e0ffff;
color box = #c49a6a;
color orange = #f6ad49;

//効果音
Minim minim;
AudioPlayer engine; //トラックが走るときの音
AudioPlayer boyoyon; //トラックが跳ねるとき
AudioPlayer boyoyon2; //最後にボールが飛び出すとき


void setup() {
  //描画の基本設定
  //size(800, 600);
  fullScreen(); //width:1536 height:1024

  // 初期描画
  background(#89ffff); //空
  noStroke();
  fill(#adffad);
  rect(0, height/7*5, width, height/7*3); //地面
  box1Reset();
  boxView1();



  if (width == 800) { //fullscreenとじゃないとき用
    y = 0;
  } else {
    y = 35;
  }

  noStroke();
  smooth();
  ellipseMode(CENTER);
  smooth();

  PFont font = createFont("Meiryo", 50);
  textFont(font);

  //Arduino設定
  if (arduinoOn) {
    printArray(Serial.list()); // 使用可能なシリアルポート一覧の出力。デバッグ用
    String portName = Serial.list()[0]; // 使用するシリアルポート名
    serialPort = new Serial(this, portName, 9600);
    serialPort.buffer(inByte.length); // 読み込むバッファの長さをの指定
  }

  delay(1000);

  moveServo1(); //1つ目のアルを起動
  delay(4000);


  //みかんの初期化
  orangeVisible1 = true;
  orangeReset();

  //段ボールの初期化
  boxVisible2 = true;
  box1Reset();

  //トラックの初期化
  trackReset();

  minim = new Minim(this);
  engine = minim.loadFile("車のエンジンをかける1.mp3");
  boyoyon = minim.loadFile("ボヨヨーン.mp3");
  boyoyon2 = minim.loadFile("ボヨヨーン.mp3");
}


void draw() {
  // 初期描画
  background(#89ffff); //空
  noStroke();
  fill(#adffad);
  rect(0, height/7*5, width, height/7*3); //地面

  fill(0);

  //トラックの描画
  alltrackView();

  //段ボールの描画
  allboxView();

  trackfrontView();

  /*
  if(arduinoOn){
   textSize(10);
   fill(0);
   text("oval1: "+oval1, 10, 20); // デバッグ用。発表時には非表示にすること
   text("oval2: "+oval2, 10, 40); // デバッグ用。発表時には非表示にすること
   }
   */
}
