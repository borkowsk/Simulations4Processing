/// Different ways to calculate Euclid distances in 2D (flat and torus)
//*/////////////////////////////////////////////////////////////////////

/// Default Euclidean distance on float numbers
/// Often needed in simulation programs
/// Actually the same as dist already shipped in Processing 3.xx
float distance(float X1,float X2,float Y1,float Y2)
{
  float dX=X2-X1;
  float dY=Y2-Y1;
  if(dX!=0 || dY!=0)
    return sqrt(dX*dX+dY*dY);
  else
    return 0;
}

/// 2D Euclidean distance on float numbers
/// Often needed in simulation programs
/// Version compatible with int and double versions
float distanceEucl(float X1,float X2,float Y1,float Y2)
{
  float dX=X2-X1;
  float dY=Y2-Y1;
  if(dX!=0 || dY!=0)
    return sqrt(dX*dX+dY*dY);
  else
    return 0;
}

/// 2D Euclidean distance on double numbers
/// Sometimes needed in simulation programs
/// Version compatible with int and float versions
double distanceEucl(double X1,double X2,double Y1,double Y2)
{
  double dX=X2-X1;
  double dY=Y2-Y1;

  if(dX!=0 || dY!=0)
    return Math.sqrt(dX*dX+dY*dY);
  else
    return 0;
}

/// Euclidean like distance on torus (float numbers)
/// Sometimes needed in simulation programs
/// Version compatible with int and double versions
/// @param Xdd & @param Ydd are the horizontal and vertical perimeter of the torus
float distanceTorus(float X1,float X2,float Y1,float Y2,float Xdd,float Ydd)
{ //println("float torus dist");
  float dX=abs(X2-X1);
  float dY=abs(Y2-Y1);
  if(dX > (Xdd/2) ) dX=Xdd-dX;
  if(dY > (Ydd/2) ) dY=Ydd-dY;
  if(dX!=0 || dY!=0)
    return sqrt(dX*dX+dY*dY);
  else
    return 0;
}

/// Euclidean like distance on torus (double numbers)
/// Sometimes needed in simulation programs
/// Version compatible with int and float versions
/// @param Xdd & @param Ydd are the horizontal and vertical perimeter of the torus
double distanceTorus(double X1,double X2,double Y1,double Y2,double Xdd,double Ydd)
{ //println("double torus dist");
  double dX=Math.abs(X2-X1);
  double dY=Math.abs(Y2-Y1);
  if( dX > (Xdd/2) ) dX=Xdd-dX;
  if( dY > (Ydd/2) ) dY=Ydd-dY;
  if(dX!=0 || dY!=0)
    return Math.sqrt(dX*dX+dY*dY);
  else
    return 0;
}

/// Euclidean like distance on torus (int numbers)
/// Sometimes needed in simulation programs
/// Version compatible with float and double versions
/// @param Xdd & @param Ydd are the horizontal and vertical perimeter of the torus
double distanceTorusInt(int X1,int X2,int Y1,int Y2,int Xdd,int Ydd)
{ //println("int torus dist");
  int dX=abs(X2-X1);
  int dY=abs(Y2-Y1);
  if( dX > (Xdd/2) ) dX=Xdd-dX;
  if( dY > (Ydd/2) ) dY=Ydd-dY;
  if(dX!=0 || dY!=0)
    return Math.sqrt(dX*dX+dY*dY);
  else
    return 0;
}

/* 
/// Domyslnie Euklidesowy, z uwzględnieniem długości okna
/// ale dlaczego nie szerokości?
double distance(double X1,double X2,double Y1,double Y2)
{
  double dX=X2-X1;
  double dY=Y2-Y1;

  if(dX>(length/2)) dX=length-dX;
  if(dY>(length/2)) dY=length-dY;
  
  if(dX!=0 || dY!=0)
    return Math.sqrt(dX*dX+dY*dY);
  else
    return 0;
}
*/

//*///////////////////////////////////////////////////////////////////////////////////////////////////
//*  https://www.researchgate.net/profile/WOJCIECH_BORKOWSKI - OPTIONAL TOOLS - FUNCTIONS & CLASSES
//*  https://github.com/borkowsk/sym4processing
//*///////////////////////////////////////////////////////////////////////////////////////////////////