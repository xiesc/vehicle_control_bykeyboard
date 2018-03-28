#include <ros/ros.h>
#include "tourancontrol/tourancontrol.h"


#include <stdio.h>
#include <linux/input.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define DEV_PATH "/dev/input/event3"   //difference is possible



int main(int argc, char** argv)
{

    float acc = 0.0;
    float ang = 0.0;

    float stepAccLow = 0.01;
    float stepAccHigh = 1.0;
    float stepBreakLow = 0.1;
    float stepBreakHigh = 1.0;

    bool flagHigh = false;
    float stepAng = 5.0;

  ros::init(argc, argv, "tourancontroler");
  ros::NodeHandle nh;
  ros::Publisher pubControlSignal = nh.advertise<tourancontrol::tourancontrol> ("/tourancontrol",1);
  ros::Rate loop_rate(50);
    int keys_fd;

    struct input_event t;
    keys_fd=open(DEV_PATH, O_RDONLY);
    if(keys_fd <= 0)
    {
      printf("open %s device error!\n",DEV_PATH);
      return -1;
    }

    while(ros::ok())
      {
        read(keys_fd,&t,sizeof(struct input_event));
        if(t.type==1)
          { 

            if (t.code==42 && t.value)
              flagHigh = true;

            if (t.code==42 && t.value == 0)  
              flagHigh = false;
              


            if (t.code==103 && t.value && flagHigh )
              acc = stepAccHigh;
            
            else if (t.code==103 && t.value && !flagHigh && acc < 0.5)
              acc = acc +stepAccLow;

            else if (t.code==103 && t.value && !flagHigh && acc >= 0.5)
              acc = 0.5;

            else if (t.code==108 && t.value)
              acc = acc - stepBreakLow;

            else if (t.code==29 && t.value)
              acc = -stepBreakHigh;

            else 
            {
               acc =0.0;
            }


             if (t.code==105 && t.value && ang < 360.0 )
              ang = ang + stepAng;
            
             if (t.code==106 && t.value && ang > -360.0)
              ang = ang - stepAng;


                tourancontrol::tourancontrol touranControlMsg;
                touranControlMsg.acceleration = acc;
                touranControlMsg.angular = ang;
                pubControlSignal.publish(touranControlMsg);



          }
        
        //  loop_rate.sleep();

        }               

    close(keys_fd);
    return 0;

       
}
    
    
  

   

