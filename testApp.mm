#include "testApp.h"
#include "Carnivore.h"
#include "Herbivore.h"

int myCircleX;
int myCircleY;
int countC;
int countH;
int countP;
int Hrank_STANDARD = 2;


//eat function, please keep the higher rank creature as A!!!!!!!
void eat(Creature A, Creature B)
{
    if (A.rank > B.rank && A.hungerM < 3 && A.rank > Hrank_STANDARD && B.rank >0) {
        //A is carnivore, b is either carnivore or herbivore
        B.setActive(false);
        
        if (B.rank<=Hrank_STANDARD && B.rank >0) {
            //B is a Herbivore
            countH--;
            A.hungerM++;
        }
        else {
            // B is a Carnivore
            countC--;
            A.hungerM+=2;
        }
        
    }
    else if(A.rank > B.rank && A.rank<=Hrank_STANDARD && A.rank>0 && B.rank==0 && A.hungerM < 3){
        // A is a Herbivore, B is a plant
        B.setActive(false);
        countP--;
        A.hungerM++;
    }
    
   
}



//--------------------------------------------------------------
void testApp::setup(){	
	ofSetFrameRate(60);
    // initialize the accelerometer
	ofxAccelerometer.setup();
	myCircleX=300;
    myCircleY = 200;
	//If you want a landscape oreintation 
	//iPhoneSetOrientation(OFXIPHONE_ORIENTATION_LANDSCAPE_RIGHT);
	
	ofBackground(127,127,127);
    
}

//--------------------------------------------------------------
void testApp::update(){
    myCircleX+=4;
    if(myCircleX>1024)
    {
        myCircleX=300;
    }

}

//--------------------------------------------------------------
void testApp::draw(){
    /*ofSetColor(200, 200, 100);
	ofCircle(200, 300,60);
    
    ofSetColor(100, 200, 100);
    ofCircle(500, 500, 100);
    
    ofSetColor(200, 150, 100);
    ofCircle(myCircleX, myCircleY, 60);*/
    
    ofFill();
	for (int i = 0; i < 100; i++){
		ofSetColor((int)ofRandom(0,255),(int)ofRandom(0,255),(int)ofRandom(0,255));
		ofRect(ofRandom(250,350),ofRandom(350,450),ofRandom(10,20),ofRandom(10,20));
	}
	ofSetHexColor(0x000000);
	ofDrawBitmapString("rectangles", 275,500);

}

//--------------------------------------------------------------
void testApp::exit(){

}

//--------------------------------------------------------------
void testApp::touchDown(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::lostFocus(){

}

//--------------------------------------------------------------
void testApp::gotFocus(){

}

//--------------------------------------------------------------
void testApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void testApp::deviceOrientationChanged(int newOrientation){

}

