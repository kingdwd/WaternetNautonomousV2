/* This function was automatically generated by CasADi */#ifdef __cplusplus
extern "C" {
#endif

#ifdef CODEGEN_PREFIX
  #define NAMESPACE_CONCAT(NS, ID) _NAMESPACE_CONCAT(NS, ID)
  #define _NAMESPACE_CONCAT(NS, ID) NS ## ID
  #define CASADI_PREFIX(ID) NAMESPACE_CONCAT(CODEGEN_PREFIX, ID)
#else /* CODEGEN_PREFIX */
  #define CASADI_PREFIX(ID) FORCESNLPsolver_model_50_ ## ID
#endif /* CODEGEN_PREFIX */

#include <math.h>

#include "FORCESNLPsolver/include/FORCESNLPsolver.h"

#define PRINTF printf
FORCESNLPsolver_FLOAT CASADI_PREFIX(sq)(FORCESNLPsolver_FLOAT x) { return x*x;}
#define sq(x) CASADI_PREFIX(sq)(x)

FORCESNLPsolver_FLOAT CASADI_PREFIX(sign)(FORCESNLPsolver_FLOAT x) { return x<0 ? -1 : x>0 ? 1 : x;}
#define sign(x) CASADI_PREFIX(sign)(x)

static const int CASADI_PREFIX(s0)[] = {10, 1, 0, 10, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
#define s0 CASADI_PREFIX(s0)
static const int CASADI_PREFIX(s1)[] = {54, 1, 0, 54, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53};
#define s1 CASADI_PREFIX(s1)
static const int CASADI_PREFIX(s2)[] = {1, 1, 0, 1, 0};
#define s2 CASADI_PREFIX(s2)
static const int CASADI_PREFIX(s3)[] = {1, 10, 0, 1, 2, 3, 4, 5, 5, 5, 5, 5, 6, 0, 0, 0, 0, 0, 0};
#define s3 CASADI_PREFIX(s3)
static const int CASADI_PREFIX(s4)[] = {6, 1, 0, 6, 0, 1, 2, 3, 4, 5};
#define s4 CASADI_PREFIX(s4)
static const int CASADI_PREFIX(s5)[] = {6, 10, 0, 0, 0, 0, 6, 12, 12, 12, 12, 12, 12, 0, 1, 2, 3, 4, 5, 0, 1, 2, 3, 4, 5};
#define s5 CASADI_PREFIX(s5)
/* evaluate_stages */
int FORCESNLPsolver_model_50(const FORCESNLPsolver_FLOAT** arg, FORCESNLPsolver_FLOAT** res) {
     FORCESNLPsolver_FLOAT a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,a40,a41,a42,a43,a44,a45,a46,a47,a48,a49;
         a0=arg[1] ? arg[1][20] : 0;
         a1=arg[0] ? arg[0][2] : 0;
  a1=(a0*a1);
         a2=arg[0] ? arg[0][9] : 0;
         a3=arg[1] ? arg[1][19] : 0;
  a2=(a2*a3);
         a4=arg[1] ? arg[1][9] : 0;
         a5=arg[1] ? arg[1][8] : 0;
         a6=(a4-a5);
         a7=sq(a6);
         a8=arg[1] ? arg[1][14] : 0;
         a9=arg[1] ? arg[1][13] : 0;
         a10=(a8-a9);
         a11=sq(a10);
  a7=(a7+a11);
  a7=sqrt(a7);
  a11=arg[1] ? arg[1][18] : 0;
         a12=(a11+a7);
         a13=(a2<a12);
         a14=0.;
         a15=(a7!=a14);
  a7=(a15?a7:0);
  a15=(!a15);
         a16=1.;
  a15=(a15?a16:0);
  a7=(a7+a15);
  a6=(a6/a7);
  a6=(a13?a6:0);
  a15=arg[1] ? arg[1][10] : 0;
         a17=(a15-a4);
         a18=sq(a17);
         a19=arg[1] ? arg[1][15] : 0;
         a20=(a19-a8);
         a21=sq(a20);
  a18=(a18+a21);
  a18=sqrt(a18);
  a21=(a12+a18);
         a22=(a2<a21);
         a23=(a18!=a14);
  a18=(a23?a18:0);
  a23=(!a23);
  a23=(a23?a16:0);
  a18=(a18+a23);
  a17=(a17/a18);
  a17=(a22?a17:0);
  a23=arg[1] ? arg[1][11] : 0;
         a24=(a23-a15);
         a25=sq(a24);
         a26=arg[1] ? arg[1][16] : 0;
         a27=(a26-a19);
         a28=sq(a27);
  a25=(a25+a28);
  a25=sqrt(a25);
  a28=(a21+a25);
         a29=(a2<a28);
         a30=(a25!=a14);
  a25=(a30?a25:0);
  a30=(!a30);
  a30=(a30?a16:0);
  a25=(a25+a30);
  a24=(a24/a25);
  a24=(a29?a24:0);
  a30=arg[1] ? arg[1][12] : 0;
  a30=(a30-a23);
         a31=sq(a30);
         a32=arg[1] ? arg[1][17] : 0;
  a32=(a32-a26);
         a33=sq(a32);
  a31=(a31+a33);
  a31=sqrt(a31);
  a33=(a31!=a14);
  a31=(a33?a31:0);
  a33=(!a33);
  a33=(a33?a16:0);
  a31=(a31+a33);
  a30=(a30/a31);
  a33=(!a29);
  a30=(a33?a30:0);
  a24=(a24+a30);
  a30=(!a22);
  a24=(a30?a24:0);
  a17=(a17+a24);
  a24=(!a13);
  a17=(a24?a17:0);
  a6=(a6+a17);
  a17=(a2<a12);
  a5=(a17?a5:0);
  a16=(a2<a21);
  a4=(a16?a4:0);
         a34=(a2<a28);
  a15=(a34?a15:0);
         a35=(!a34);
  a23=(a35?a23:0);
  a15=(a15+a23);
  a23=(!a16);
  a15=(a23?a15:0);
  a4=(a4+a15);
  a15=(!a17);
  a4=(a15?a4:0);
  a5=(a5+a4);
  a4=(a2<a12);
  a11=(a2-a11);
  a11=(a4?a11:0);
         a36=(a2<a21);
  a12=(a2-a12);
  a12=(a36?a12:0);
         a37=(a2<a28);
  a21=(a2-a21);
  a21=(a37?a21:0);
  a2=(a2-a28);
  a28=(!a37);
  a2=(a28?a2:0);
  a21=(a21+a2);
  a2=(!a36);
  a21=(a2?a21:0);
  a12=(a12+a21);
  a21=(!a4);
  a12=(a21?a12:0);
  a11=(a11+a12);
  a12=(a11*a6);
  a5=(a5+a12);
  a12=arg[0] ? arg[0][3] : 0;
  a5=(a5-a12);
         a38=(a6*a5);
  a10=(a10/a7);
  a13=(a13?a10:0);
  a20=(a20/a18);
  a22=(a22?a20:0);
  a27=(a27/a25);
  a29=(a29?a27:0);
  a32=(a32/a31);
  a33=(a33?a32:0);
  a29=(a29+a33);
  a30=(a30?a29:0);
  a22=(a22+a30);
  a24=(a24?a22:0);
  a13=(a13+a24);
  a17=(a17?a9:0);
  a16=(a16?a8:0);
  a34=(a34?a19:0);
  a35=(a35?a26:0);
  a34=(a34+a35);
  a23=(a23?a34:0);
  a16=(a16+a23);
  a15=(a15?a16:0);
  a17=(a17+a15);
  a11=(a11*a13);
  a17=(a17+a11);
  a11=arg[0] ? arg[0][4] : 0;
  a17=(a17-a11);
  a15=(a13*a17);
  a38=(a38+a15);
  a15=sq(a38);
  a16=arg[1] ? arg[1][21] : 0;
  a15=(a16*a15);
  a1=(a1+a15);
  a17=(a6*a17);
  a5=(a13*a5);
  a17=(a17-a5);
  a5=sq(a17);
  a15=arg[1] ? arg[1][22] : 0;
  a5=(a15*a5);
  a1=(a1+a5);
  a5=arg[0] ? arg[0][0] : 0;
  a23=(a14<=a5);
  a34=(a23?a5:0);
  a35=arg[1] ? arg[1][3] : 0;
  a5=(a5/a35);
  a26=(!a23);
  a5=(a26?a5:0);
  a34=(a34+a5);
  a5=sq(a34);
  a19=arg[0] ? arg[0][1] : 0;
  a14=(a14<=a19);
  a8=(a14?a19:0);
  a19=(a19/a35);
  a9=(!a14);
  a19=(a9?a19:0);
  a8=(a8+a19);
  a19=sq(a8);
  a5=(a5+a19);
  a19=arg[1] ? arg[1][23] : 0;
  a5=(a19*a5);
  a1=(a1+a5);
  if (res[0]!=0) res[0][0]=a1;
  a34=(a34+a34);
  a34=(a34*a19);
  a26=(a26*a34);
  a26=(a26/a35);
  a23=(a23*a34);
  a26=(a26+a23);
  if (res[1]!=0) res[1][0]=a26;
  a8=(a8+a8);
  a8=(a8*a19);
  a9=(a9*a8);
  a9=(a9/a35);
  a14=(a14*a8);
  a9=(a9+a14);
  if (res[1]!=0) res[1][1]=a9;
  if (res[1]!=0) res[1][2]=a0;
  a38=(a38+a38);
  a38=(a38*a16);
  a16=(a6*a38);
  a17=(a17+a17);
  a17=(a17*a15);
  a15=(a13*a17);
  a16=(a16-a15);
  a15=(-a16);
  if (res[1]!=0) res[1][3]=a15;
  a17=(a6*a17);
  a38=(a13*a38);
  a17=(a17+a38);
  a38=(-a17);
  if (res[1]!=0) res[1][4]=a38;
  a13=(a13*a17);
  a6=(a6*a16);
  a13=(a13+a6);
  a21=(a21*a13);
  a2=(a2*a21);
  a28=(a28*a2);
  a37=(a37*a2);
  a28=(a28+a37);
  a36=(a36*a21);
  a28=(a28+a36);
  a4=(a4*a13);
  a28=(a28+a4);
  a3=(a3*a28);
  if (res[1]!=0) res[1][5]=a3;
  a3=arg[1] ? arg[1][24] : 0;
  a28=(a12-a3);
  a4=arg[1] ? arg[1][48] : 0;
  a13=cos(a4);
  a28=(a28*a13);
  a36=arg[1] ? arg[1][30] : 0;
  a21=(a11-a36);
  a37=sin(a4);
  a21=(a21*a37);
  a28=(a28+a21);
  a21=arg[1] ? arg[1][36] : 0;
  a28=(a28/a21);
  a2=sq(a28);
  a36=(a11-a36);
  a6=cos(a4);
  a36=(a36*a6);
  a3=(a12-a3);
  a4=sin(a4);
  a3=(a3*a4);
  a36=(a36-a3);
  a3=arg[1] ? arg[1][42] : 0;
  a36=(a36/a3);
  a16=sq(a36);
  a2=(a2+a16);
  if (res[2]!=0) res[2][0]=a2;
  a2=arg[1] ? arg[1][25] : 0;
  a16=(a12-a2);
  a17=arg[1] ? arg[1][49] : 0;
  a38=cos(a17);
  a16=(a16*a38);
  a15=arg[1] ? arg[1][31] : 0;
  a0=(a11-a15);
  a9=sin(a17);
  a0=(a0*a9);
  a16=(a16+a0);
  a0=arg[1] ? arg[1][37] : 0;
  a16=(a16/a0);
  a14=sq(a16);
  a15=(a11-a15);
  a8=cos(a17);
  a15=(a15*a8);
  a2=(a12-a2);
  a17=sin(a17);
  a2=(a2*a17);
  a15=(a15-a2);
  a2=arg[1] ? arg[1][43] : 0;
  a15=(a15/a2);
  a35=sq(a15);
  a14=(a14+a35);
  if (res[2]!=0) res[2][1]=a14;
  a14=arg[1] ? arg[1][26] : 0;
  a35=(a12-a14);
  a19=arg[1] ? arg[1][50] : 0;
  a26=cos(a19);
  a35=(a35*a26);
  a23=arg[1] ? arg[1][32] : 0;
  a34=(a11-a23);
  a1=sin(a19);
  a34=(a34*a1);
  a35=(a35+a34);
  a34=arg[1] ? arg[1][38] : 0;
  a35=(a35/a34);
  a5=sq(a35);
  a23=(a11-a23);
  a24=cos(a19);
  a23=(a23*a24);
  a14=(a12-a14);
  a19=sin(a19);
  a14=(a14*a19);
  a23=(a23-a14);
  a14=arg[1] ? arg[1][44] : 0;
  a23=(a23/a14);
  a22=sq(a23);
  a5=(a5+a22);
  if (res[2]!=0) res[2][2]=a5;
  a5=arg[1] ? arg[1][27] : 0;
  a22=(a12-a5);
  a30=arg[1] ? arg[1][51] : 0;
  a29=cos(a30);
  a22=(a22*a29);
  a33=arg[1] ? arg[1][33] : 0;
  a32=(a11-a33);
  a31=sin(a30);
  a32=(a32*a31);
  a22=(a22+a32);
  a32=arg[1] ? arg[1][39] : 0;
  a22=(a22/a32);
  a27=sq(a22);
  a33=(a11-a33);
  a25=cos(a30);
  a33=(a33*a25);
  a5=(a12-a5);
  a30=sin(a30);
  a5=(a5*a30);
  a33=(a33-a5);
  a5=arg[1] ? arg[1][45] : 0;
  a33=(a33/a5);
  a20=sq(a33);
  a27=(a27+a20);
  if (res[2]!=0) res[2][3]=a27;
  a27=arg[1] ? arg[1][28] : 0;
  a20=(a12-a27);
  a18=arg[1] ? arg[1][52] : 0;
  a10=cos(a18);
  a20=(a20*a10);
  a7=arg[1] ? arg[1][34] : 0;
         a39=(a11-a7);
         a40=sin(a18);
  a39=(a39*a40);
  a20=(a20+a39);
  a39=arg[1] ? arg[1][40] : 0;
  a20=(a20/a39);
         a41=sq(a20);
  a7=(a11-a7);
         a42=cos(a18);
  a7=(a7*a42);
  a27=(a12-a27);
  a18=sin(a18);
  a27=(a27*a18);
  a7=(a7-a27);
  a27=arg[1] ? arg[1][46] : 0;
  a7=(a7/a27);
         a43=sq(a7);
  a41=(a41+a43);
  if (res[2]!=0) res[2][4]=a41;
  a41=arg[1] ? arg[1][29] : 0;
  a43=(a12-a41);
         a44=arg[1] ? arg[1][53] : 0;
         a45=cos(a44);
  a43=(a43*a45);
         a46=arg[1] ? arg[1][35] : 0;
         a47=(a11-a46);
         a48=sin(a44);
  a47=(a47*a48);
  a43=(a43+a47);
  a47=arg[1] ? arg[1][41] : 0;
  a43=(a43/a47);
         a49=sq(a43);
  a11=(a11-a46);
  a46=cos(a44);
  a11=(a11*a46);
  a12=(a12-a41);
  a44=sin(a44);
  a12=(a12*a44);
  a11=(a11-a12);
  a12=arg[1] ? arg[1][47] : 0;
  a11=(a11/a12);
  a41=sq(a11);
  a49=(a49+a41);
  if (res[2]!=0) res[2][5]=a49;
  a28=(a28+a28);
  a13=(a13/a21);
  a13=(a28*a13);
  a36=(a36+a36);
  a4=(a4/a3);
  a4=(a36*a4);
  a13=(a13-a4);
  if (res[3]!=0) res[3][0]=a13;
  a16=(a16+a16);
  a38=(a38/a0);
  a38=(a16*a38);
  a15=(a15+a15);
  a17=(a17/a2);
  a17=(a15*a17);
  a38=(a38-a17);
  if (res[3]!=0) res[3][1]=a38;
  a35=(a35+a35);
  a26=(a26/a34);
  a26=(a35*a26);
  a23=(a23+a23);
  a19=(a19/a14);
  a19=(a23*a19);
  a26=(a26-a19);
  if (res[3]!=0) res[3][2]=a26;
  a22=(a22+a22);
  a29=(a29/a32);
  a29=(a22*a29);
  a33=(a33+a33);
  a30=(a30/a5);
  a30=(a33*a30);
  a29=(a29-a30);
  if (res[3]!=0) res[3][3]=a29;
  a20=(a20+a20);
  a10=(a10/a39);
  a10=(a20*a10);
  a7=(a7+a7);
  a18=(a18/a27);
  a18=(a7*a18);
  a10=(a10-a18);
  if (res[3]!=0) res[3][4]=a10;
  a43=(a43+a43);
  a45=(a45/a47);
  a45=(a43*a45);
  a11=(a11+a11);
  a44=(a44/a12);
  a44=(a11*a44);
  a45=(a45-a44);
  if (res[3]!=0) res[3][5]=a45;
  a37=(a37/a21);
  a28=(a28*a37);
  a6=(a6/a3);
  a36=(a36*a6);
  a28=(a28+a36);
  if (res[3]!=0) res[3][6]=a28;
  a9=(a9/a0);
  a16=(a16*a9);
  a8=(a8/a2);
  a15=(a15*a8);
  a16=(a16+a15);
  if (res[3]!=0) res[3][7]=a16;
  a1=(a1/a34);
  a35=(a35*a1);
  a24=(a24/a14);
  a23=(a23*a24);
  a35=(a35+a23);
  if (res[3]!=0) res[3][8]=a35;
  a31=(a31/a32);
  a22=(a22*a31);
  a25=(a25/a5);
  a33=(a33*a25);
  a22=(a22+a33);
  if (res[3]!=0) res[3][9]=a22;
  a40=(a40/a39);
  a20=(a20*a40);
  a42=(a42/a27);
  a7=(a7*a42);
  a20=(a20+a7);
  if (res[3]!=0) res[3][10]=a20;
  a48=(a48/a47);
  a43=(a43*a48);
  a46=(a46/a12);
  a11=(a11*a46);
  a43=(a43+a11);
  if (res[3]!=0) res[3][11]=a43;
  return 0;
}

int FORCESNLPsolver_model_50_init(int *f_type, int *n_in, int *n_out, int *sz_arg, int* sz_res) {
  *f_type = 1;
  *n_in = 2;
  *n_out = 4;
  *sz_arg = 2;
  *sz_res = 4;
  return 0;
}

int FORCESNLPsolver_model_50_sparsity(int i, int *nrow, int *ncol, const int **colind, const int **row) {
  const int* s;
  switch (i) {
    case 0:
      s = s0; break;
    case 1:
      s = s1; break;
    case 2:
      s = s2; break;
    case 3:
      s = s3; break;
    case 4:
      s = s4; break;
    case 5:
      s = s5; break;
    default:
      return 1;
  }

  *nrow = s[0];
  *ncol = s[1];
  *colind = s + 2;
  *row = s + 2 + (*ncol + 1);
  return 0;
}

int FORCESNLPsolver_model_50_work(int *sz_iw, int *sz_w) {
  if (sz_iw) *sz_iw = 0;
  if (sz_w) *sz_w = 50;
  return 0;
}


#ifdef __cplusplus
} /* extern "C" */
#endif
