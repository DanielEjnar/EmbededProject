#ifdef _MSC_VER
	#include "stdafx.h"
#endif
#include "ieee754float.h"
#include <cmath>
#include <cstdlib>

float uint32ToFloat(uint32_t value){
	/*
  int sign = 0;
  if((0x80000000&value) > 0){
    sign = 1;
  }
  int exponent = (value>>23)&(0x000000FF);
  int mantissa = value&0x007FFFFF;
  float mantissaSum = 0.0;
  for(int i = 0; i < 23; i++){
    if(((1<<(23-i))&mantissa) > 0){
       mantissaSum += pow(2,-i);
    }
  }
  return pow(-1,sign)*pow(2,exponent-127)*(1+mantissaSum);
  */
  return *reinterpret_cast<float*>(&value);
}

uint32_t floatToUint32_t(float value){
  return *reinterpret_cast<uint32_t*>(&value);
}
