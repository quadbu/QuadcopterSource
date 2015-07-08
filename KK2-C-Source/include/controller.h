/*
 * controller.h
 *
 * Created: 25.08.2012 16:17:40
 *  Author: OliverS
 */ 


#ifndef CONTROLLER_H_
#define CONTROLLER_H_

extern int16_t CONTROL[4];

void controllerReset();
void controllerCalculate();
int16_t limit(int16_t value, int16_t low, int16_t high);



#endif /* CONTROLLER_H_ */