/*
* Copyright (C) 2016, BeiJing ZhiXingZhe, Inc.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
* ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
* LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
* CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
* SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
* INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
* CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
* ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
* POSSIBILITY OF SUCH DAMAGE.
*
* Author Information:
* ww
*
* Node Information: #####The script info should be changed - lxf#####
* The function of this node is listed as follows: 
* 1. subscribe the information of node ivobjectfusion;
* 2. model the object using its dynamic feature, behavior and shape, etc;
* 3. using grid and power index to represent the power of an object;
*/

#include "canmsg.h"
#include <stdio.h>


  float accControl = 0.0;
  float steeringAngleControl = 0.0;
   int accActive = 0;
   int steerActive = 0;
   int steerOri = 0;
   bool flagaa = true;



void discanmessages()
{
	int ret1;
	uint8 sendBuf6ff[13];
	
        sendBuf6ff[5] = 0x00;
        sendBuf6ff[6] = 0x00;
        sendBuf6ff[7] = 0x00; 
        sendBuf6ff[8] = 0x00;
        sendBuf6ff[9] = 0x00;
        sendBuf6ff[10]= 0x00;
        sendBuf6ff[11]= 0x00;
        sendBuf6ff[12]= 0x00;
        ret1 = boostUdp->send_data(sendBuf6ff, 13);
}

void sendRadarConfig() 
{
   

   uint8 sendBuf200[13];
   uint8 sendBuf6ff[13]; 


   

  while (ros::ok())
  {
        int accCan = (int)((accControl+7.22)/0.005);
        int steeringAngleCan  = (int)((steeringAngleControl/0.1));
        ROS_INFO ("accCan,%x",accCan);
        ROS_INFO ("steeringAngleCan,%x",steeringAngleCan);
        // ROS_INFO ("accCan&255,%x",(steeringAngleCan&7936)>>8);
 

        int ret1, ret2;

//=======================6ff============================
        memset(sendBuf6ff, 0, sizeof(sendBuf6ff));
        sendBuf6ff[0] = 0x08;
        sendBuf6ff[1] = 0x00;
        sendBuf6ff[2] = 0x00; 
        sendBuf6ff[3] = 0x06;
        sendBuf6ff[4] = 0xff;
//////////////data segment/////////////
        sendBuf6ff[5] = (steerOri<<5)|(steerActive<<2)|(accActive);
        sendBuf6ff[6] = accCan&255;
        sendBuf6ff[7] = (accCan&1792)>>8; 
        sendBuf6ff[8] = 0x00;
        sendBuf6ff[9] = 0x10;
        sendBuf6ff[10]= steeringAngleCan&255;
        sendBuf6ff[11]= (steeringAngleCan&7936)>>8;
        sendBuf6ff[12]= 0x00;

        ROS_INFO ("sendBuf6ff[5],%x",sendBuf6ff[5]);
        ROS_INFO ("sendBuf6ff[6],%x",sendBuf6ff[6]);
        ROS_INFO ("sendBuf6ff[7],%x",sendBuf6ff[7]);
        ROS_INFO ("sendBuf6ff[10],%x",sendBuf6ff[10]);
        ROS_INFO ("sendBuf6ff[11],%x",sendBuf6ff[11]);


        ret1 = boostUdp->send_data(sendBuf6ff, 13);
  }
       
    

}

void run()
{   



  // std::cerr<<"accControl,"<<accControl<<std::endl;
  // std::cerr<<"steeringAngleControl,"<<steeringAngleControl<<std::endl;
  ROS_INFO("run()..........");
  ros::spin();
}





void initUdp(){
  // ROS_INFO("initUdp()..........");
  boost::asio::io_service io_service;
  boostUdp = new Boost_UDP(io_service,ipHost,portHost,ipTarget,portTarget);
  boostUdp->start_sock();
   
  boost::function<void()> send = boost::bind(sendRadarConfig);
  boost::thread sendRadarConfigThread(send);  


}

void controlerSignalHandler(tourancontrol::tourancontrol touranControlMsg){
  float acclerationIn = touranControlMsg.acceleration;
  float steeringAngleIn = touranControlMsg.angular;

      if (acclerationIn < -7.0){
      acclerationIn = -7.0;
      accActive = 1;
    }
    else if(acclerationIn > 3.0){
      acclerationIn = 3.0;
      accActive = 1;
    }
    else
    {
     accActive = 1;

    }

      
       
    if (steeringAngleIn<0.0){
      steeringAngleIn = -steeringAngleIn;
      steerOri = 1;
      steerActive = 1;
    }
    else{
      steerOri = 0;
      steerActive = 1;
    }

    if (steeringAngleIn>487.0)
      steeringAngleIn = 487.0;

    accControl = acclerationIn;
    steeringAngleControl = steeringAngleIn; 
  
}

 

int main(int argc, char *argv[])
{
  ros::init(argc, argv, "tourancan");
  ros::NodeHandle nh;

    // ipHost="192.168.1.100";
  // portHost=4008;
  // ipTarget="192.168.1.178";
  // portTarget=4008;
  // ipHost="192.168.1.100";
  // portHost=4008;
  // ipTarget="192.168.1.178";
  // portTarget=4008;
  ipHost="192.168.110.1";
  portHost=4004;
  ipTarget="192.168.110.104";
  portTarget=4004;
  initUdp();  




    ros::Subscriber subcontrolerSignal = nh.subscribe<tourancontrol::tourancontrol> 
                                  ("/tourancontrol", 1, controlerSignalHandler);

 
  //node.sendRadarConfig();
//   ros::Rate loop_rate(0.4);

  run();
  
  return 0;
}

